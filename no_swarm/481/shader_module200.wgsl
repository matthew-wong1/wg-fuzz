struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(1047f, -1346f, -1000f, 929f, 187f, -2238f, -407f, 1000f);

var<private> global1: array<Struct_4, 26>;

var<private> global2: vec2<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> vec2<bool> {
    let var_0 = arg_0;
    var var_1 = any(vec4<bool>(any(vec4<bool>(false, true, true, true)), !any(vec3<bool>(true, true, true)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true))), true));
    let var_2 = false;
    var_1 = any(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(42642u, 8u)] < global0[_wgslsmith_index_u32(34720u, 8u)], var_2 | var_2), vec3<bool>(true, true, true), !var_2 == all(vec2<bool>(var_2, var_2))));
    return vec2<bool>(true, global2.x > 0i);
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> Struct_3 {
    global0 = array<f32, 8>();
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-264f, arg_0.b))) + vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -436f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-416f, arg_0.b)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(548f))), -292f)), select(!vec2<bool>(arg_0.a.b, true), func_2(arg_0.c.xw, u_input.a), arg_0.a.a)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)), Struct_1(arg_1, 56571i < _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0.c.x, -1i), _wgslsmith_mod_i32(global2.x, arg_0.c.x))), !vec4<bool>(any(vec3<bool>(arg_1, true, arg_0.a.b)), !arg_1, !(false | arg_0.a.a), false), global2.x);
    global1 = array<Struct_4, 26>();
    var_1 = Struct_2(global0[_wgslsmith_index_u32(~arg_0.d.x, 8u)], var_1.b, !var_1.c, ~(arg_0.c.x >> (~27363u % 32u)) & _wgslsmith_mult_i32(~(var_1.d & 1i), 2147483647i));
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(u_input.a), 8u)] * _wgslsmith_f_op_f32(-var_0.x)))), Struct_1(any(!vec3<bool>(false, var_1.c.x, true)), true), !var_1.c, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(select(arg_0.c.x, 15146i, false), abs(arg_0.c.x)), var_1.d, -19777i & var_1.d)), Struct_1(any(vec4<bool>(var_1.c.x, false, arg_0.a.b, false == var_1.c.x)), false));
}

fn func_3(arg_0: bool, arg_1: f32) -> u32 {
    var var_0 = func_1(Struct_4(func_1(Struct_4(Struct_1(false, false), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 8u)]), firstLeadingBit(vec4<i32>(global2.x, 64933i, global2.x, global2.x)), vec4<u32>(630u, u_input.a, u_input.b.x, u_input.a) >> (vec4<u32>(42854u, 4294967295u, 10596u, 4294967295u) % vec4<u32>(32u))), arg_0).a.b, 492f, vec4<i32>(-1i, global2.x, select(~22191i, global2.x, !arg_0), reverseBits(global2.x)), ~vec4<u32>(~28202u, 9454u, u_input.b.x, ~0u)), arg_0).b;
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(countOneBits(u_input.b.x), 0u), 26u)];
    var var_2 = _wgslsmith_f_op_f32(-arg_1);
    let var_3 = true;
    let var_4 = Struct_2(112f, func_1(Struct_4(func_1(global1[_wgslsmith_index_u32(~35623u, 26u)], true).b, -626f, firstTrailingBit(vec4<i32>(var_1.c.x, var_1.c.x, var_1.c.x, global2.x) >> (vec4<u32>(14243u, var_1.d.x, u_input.a, u_input.a) % vec4<u32>(32u))), vec4<u32>(4294967295u, var_1.d.x, 73117u, 29827u) | max(vec4<u32>(0u, var_1.d.x, 49919u, u_input.a), var_1.d)), true).a.b, select(vec4<bool>(!all(vec4<bool>(var_1.a.a, var_0.b, arg_0, var_3)), var_1.a.b, max(1u, u_input.a) >= _wgslsmith_clamp_u32(var_1.d.x, 1u, var_1.d.x), !select(false, false, false)), vec4<bool>(_wgslsmith_f_op_f32(-var_1.b) != -271f, !(!arg_0), func_1(global1[_wgslsmith_index_u32(~u_input.b.x, 26u)], all(vec2<bool>(var_1.a.b, var_3))).b.b, (arg_0 == arg_0) || arg_0), true), -_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mod_i32(var_1.c.x, var_1.c.x), ~select(var_1.c.x, -2090i, false)));
    return _wgslsmith_sub_u32(_wgslsmith_div_u32(~var_1.d.x, 27336u), 58552u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 8>();
    var var_0 = func_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), max(~u_input.b.xz, vec2<u32>(_wgslsmith_add_u32(4294967295u, u_input.a), u_input.b.x))), 26u)], any(vec2<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), select(false, true, true))));
    var_0 = func_1(Struct_4(func_1(Struct_4(func_1(global1[_wgslsmith_index_u32(u_input.a, 26u)], true).a.b, _wgslsmith_f_op_f32(593f + -1048f), vec4<i32>(var_0.a.d, 2147483647i, global2.x, global2.x) | vec4<i32>(5996i, -2147483647i, -12311i, global2.x), ~vec4<u32>(u_input.a, 20448u, u_input.a, u_input.b.x)), any(!var_0.a.c)).a.b, -1316f, vec4<i32>(_wgslsmith_add_i32(var_0.a.d, abs(493i)), var_0.a.d, -35436i, ~_wgslsmith_clamp_i32(var_0.a.d, -45549i, -7646i)), vec4<u32>(func_3(var_0.a.c.x, 1f), u_input.b.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(27055u, u_input.a, u_input.b.x, u_input.b.x)), vec4<u32>(0u, 4294967295u, 0u, 0u)), _wgslsmith_clamp_u32(min(u_input.b.x, u_input.a), ~u_input.b.x, u_input.b.x))), all(!select(select(vec3<bool>(false, true, true), var_0.a.c.zxx, true), vec3<bool>(true, false, var_0.a.c.x), true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a, global0[_wgslsmith_index_u32(u_input.b.x, 8u)], -296f, 286f) + vec4<f32>(-1745f, 203f, -1000f, -246f)))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(448f, var_0.a.a, -287f, 1014f) + vec4<f32>(-377f, 633f, -758f, var_0.a.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(604f, global0[_wgslsmith_index_u32(u_input.b.x, 8u)], var_0.a.a, var_0.a.a)))))));
    let var_2 = Struct_5(~firstTrailingBit(~max(u_input.b, u_input.b)), _wgslsmith_f_op_f32(sign(378f)));
    let var_3 = vec2<i32>(~abs(abs(global2.x & 2147483647i)), -(~var_0.a.d));
    var var_4 = vec3<i32>(0i, firstLeadingBit(var_0.a.d), -firstTrailingBit(_wgslsmith_mod_i32(var_0.a.d, 1513i))) >> (abs(~(~vec3<u32>(u_input.a, 12975u, 0u))) % vec3<u32>(32u));
    let var_5 = Struct_4(Struct_1(var_0.a.c.x, true), _wgslsmith_div_f32(func_1(Struct_4(var_0.b, -250f, max(vec4<i32>(0i, var_3.x, global2.x, -1i), vec4<i32>(1i, 0i, global2.x, 2147483647i)), ~vec4<u32>(u_input.b.x, 56773u, 1u, var_2.a.x)), !(!var_0.a.b.a)).a.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-727f, -557f))), -vec4<i32>(var_3.x, var_3.x, var_0.a.d & -var_4.x, global2.x), _wgslsmith_mult_vec4_u32(~max(vec4<u32>(u_input.a, 41740u, 7225u, 21943u), vec4<u32>(55026u, 0u, 4294967295u, u_input.a)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 47062u, 0u, 4294967295u), vec4<u32>(1u, u_input.b.x, var_2.a.x, 56507u)), select(u_input.b.x, max(u_input.a, 35787u), 0i != global2.x), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(23899u, 3461u), u_input.a, _wgslsmith_div_u32(0u, var_2.a.x)), _wgslsmith_mod_u32(66626u, abs(1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.x << (var_5.d.x % 32u), select(_wgslsmith_mult_i32(~(-33110i | var_3.x), var_3.x), -7449i, var_5.a.b), var_5.c.x, var_5.c);
}

