struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(-16388i, -14844i, 10667i, 24112i, -1493i, -1i, 0i, -43406i, 1i, -1i, -57559i);

var<private> global1: array<Struct_4, 19>;

var<private> global2: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, 926f, 1471f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(234f, _wgslsmith_div_f32(-1377f, -341f), _wgslsmith_f_op_f32(-1402f + 1338f), _wgslsmith_f_op_f32(-384f + -782f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1061f, -711f, 673f, -478f) + vec4<f32>(-1456f, -239f, -677f, -262f)))), vec4<bool>(true, true, true, true))));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> i32 {
    var var_0 = ~vec3<u32>(~(~(~1u)), 36167u, 1u);
    var var_1 = true;
    var var_2 = Struct_4(Struct_3(func_2()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -408f))), countOneBits(-18560i), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-940f, -713f, 1000f, 550f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(825f, 1063f, 214f, 1680f)))))), Struct_1(vec4<f32>(1f, 1f, 1f, 1f)));
    global0 = array<i32, 11>();
    var_1 = false;
    return firstLeadingBit(-(~(-19767i)) >> (1u % 32u));
}

fn func_1() -> i32 {
    var var_0 = -(select(vec4<i32>(i32(-1i) * -2147483647i, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 11u)], 0i), (vec4<i32>(global0[_wgslsmith_index_u32(36854u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], 25127i, 0i) ^ vec4<i32>(32382i, 2147483647i, u_input.a, -1i)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), select(true, true, true)) & vec4<i32>(abs(-4094i | u_input.a), ~global0[_wgslsmith_index_u32(51259u, 11u)] | -u_input.a, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(abs(30941u), 11u)], _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(40750u, 11u)], 14571i)), u_input.a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, global0[_wgslsmith_index_u32(68459u, 11u)]), vec3<i32>(53970i, -28167i, 2147483647i))));
    var var_1 = Struct_4(Struct_3(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-719f)), _wgslsmith_f_op_f32(min(-720f, 1000f))))), abs(func_3(select(vec2<bool>(true, true), vec2<bool>(true, false), false), any(vec2<bool>(true, false))) << (~1u % 32u)), func_2(), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(func_2().a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-726f, 2722f, -618f, -1000f) + vec4<f32>(-1377f, -365f, -546f, -2165f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1226f, -1635f, -421f, 170f) - vec4<f32>(1084f, 160f, -418f, -375f)))))));
    var_0 = reverseBits(vec4<i32>(firstLeadingBit(func_3(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), true)), func_3(vec2<bool>(true, true), var_1.d.a.x > _wgslsmith_f_op_f32(-var_1.a.a.a.x)), 1i, _wgslsmith_clamp_i32(max(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, global0[_wgslsmith_index_u32(115003u, 11u)]), vec2<i32>(global0[_wgslsmith_index_u32(48593u, 11u)], var_0.x)), global0[_wgslsmith_index_u32(1u, 11u)]), ~34600i, func_3(vec2<bool>(true, true), true))));
    var var_2 = abs(58287u);
    global2 = array<vec3<bool>, 28>();
    return max(10578i, _wgslsmith_mult_i32(0i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((-35628i | max(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-12079i, global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(23516u, 11u)], 8225i), vec4<i32>(1i, global0[_wgslsmith_index_u32(1333u, 11u)], 1i, global0[_wgslsmith_index_u32(0u, 11u)])))) != func_1()) != false;
    var var_1 = reverseBits(~(~(~reverseBits(6472u))));
    global0 = array<i32, 11>();
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -1579f))), vec2<f32>(-1830f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1157f, -426f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1652f)) + func_2().a.x), _wgslsmith_f_op_f32(trunc(-1000f))), -120f), false));
    var var_3 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1316f), var_2.x)), _wgslsmith_f_op_f32(trunc(func_2().a.x)), _wgslsmith_f_op_f32(165f + var_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1878f)), _wgslsmith_f_op_f32(-var_2.x)))));
    var var_4 = Struct_1(var_3.a.a);
    var_3 = Struct_3(func_2());
    var var_5 = Struct_2(var_4.a.x, _wgslsmith_f_op_vec2_f32(step(var_4.a.zw, _wgslsmith_f_op_vec2_f32(var_3.a.a.yw * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_3.a.a.yy), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.a.x, 1000f) * vec2<f32>(834f, var_2.x)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))))))), vec3<f32>(_wgslsmith_f_op_f32(392f + var_3.a.a.x), _wgslsmith_f_op_f32(-var_3.a.a.x), -1283f));
    var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(515f, -1919f, -1000f, -202f) * vec4<f32>(var_5.a, var_4.a.x, var_4.a.x, var_5.a))) * _wgslsmith_f_op_vec4_f32(-var_3.a.a)) - _wgslsmith_f_op_vec4_f32(-var_3.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-7191i, min(~vec2<u32>(0u, max(27318u, 4294967295u)), ~vec2<u32>(53290u, 4294967295u)), reverseBits(~(~select(vec3<i32>(-8802i, -12327i, global0[_wgslsmith_index_u32(21254u, 11u)]), vec3<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(30499u, 11u)]), true))), vec3<i32>(func_1(), 12276i, -15640i));
}

