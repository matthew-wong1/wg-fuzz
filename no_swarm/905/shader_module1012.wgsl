struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_4) -> f32 {
    let var_0 = Struct_3(arg_2.b, arg_2.a.a.x, -1444f, Struct_2(Struct_1(arg_3.d, _wgslsmith_f_op_f32(arg_2.a.b - -370f), arg_3.b, arg_3.b, arg_2.b.e), Struct_1(arg_2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 1153f)), arg_3.b, !(false == arg_1.x), !(arg_3.c.x > 2147483647i))));
    global0 = array<Struct_2, 22>();
    var var_1 = !(_wgslsmith_mod_u32(arg_3.d.x, firstTrailingBit(arg_2.a.a.x)) < 3029u);
    let var_2 = Struct_1(countOneBits(abs(vec4<u32>(var_0.d.a.a.x, var_0.b, 62965u, arg_2.a.a.x)) >> (_wgslsmith_sub_vec4_u32(select(vec4<u32>(arg_2.a.a.x, var_0.b, arg_3.d.x, u_input.b), arg_3.d, vec4<bool>(false, var_0.a.c, false, arg_2.b.c)), abs(arg_3.d)) % vec4<u32>(32u))), 243f, 1102f >= arg_2.b.b, true, arg_2.b.e);
    let var_3 = arg_3.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.a.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.b))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<f32>) -> vec4<u32> {
    let var_0 = vec3<f32>(-233f, 327f, -1091f);
    var var_1 = Struct_2(Struct_1(vec4<u32>(firstLeadingBit(arg_0.x), 1u, u_input.c, 0u), _wgslsmith_f_op_f32(func_3(var_0, vec4<bool>(var_0.x != 2266f, true, true, true), global0[_wgslsmith_index_u32(0u, 22u)], Struct_4(vec2<i32>(u_input.a, u_input.a), true, vec3<i32>(u_input.a, 34397i, u_input.a), max(vec4<u32>(0u, 4294967295u, arg_0.x, arg_0.x), vec4<u32>(u_input.c, u_input.b, u_input.c, u_input.c))))), true, true | ((85016u >> (arg_0.x % 32u)) == u_input.c), all(vec3<bool>(true, any(vec4<bool>(true, true, true, false)), true))), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, arg_0.x, 1u, 4294967295u) & vec4<u32>(u_input.b, 1u, 14112u, 22835u), vec4<u32>(~u_input.c, 1u, max(57025u, u_input.b), ~1u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(264f + 606f))))), true, true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    var var_2 = all(select(!select(vec4<bool>(var_1.b.c, var_1.b.e, true, true), vec4<bool>(var_1.b.d, var_1.b.d, false, true), vec4<bool>(var_1.a.c, var_1.b.c, var_1.b.c, true)), vec4<bool>(var_1.a.e, false, var_1.b.e, false), all(select(vec3<bool>(false, false, var_1.a.e), vec3<bool>(false, false, true), vec3<bool>(false, false, var_1.a.d))))) | true;
    let var_3 = -vec3<i32>(-108773i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2704i, u_input.a) << (var_1.b.a.yx % vec2<u32>(32u))), abs(u_input.a)), 0i);
    var var_4 = _wgslsmith_f_op_f32(-234f - _wgslsmith_f_op_f32(-var_1.a.b));
    return vec4<u32>(~countOneBits(~(~1u)), u_input.c, 22537u, _wgslsmith_add_u32(~4077u, _wgslsmith_div_u32(~1u, var_1.a.a.x & u_input.b) << (1u % 32u)));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_u32(func_2(~vec2<u32>(u_input.b, 4294967295u) ^ (vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(0u, u_input.c) % vec2<u32>(32u))), vec3<f32>(_wgslsmith_div_f32(-1499f, -608f), 1049f, _wgslsmith_f_op_f32(min(1718f, 302f)))), countOneBits(~vec4<u32>(0u, 47753u, u_input.b, 17052u) << ((vec4<u32>(43396u, 45858u, 15275u, 51147u) >> (vec4<u32>(112267u, 25722u, u_input.b, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-132f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2113f), 146f))) - 1414f), true == (31980u > select(u_input.c, 1u, true)), any(vec2<bool>(false, all(vec4<bool>(true, true, true, true)))), false);
    var var_1 = global0[_wgslsmith_index_u32(1u, 22u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-703f, 1000f, -1270f, var_1.a.b)))))))));
    let var_3 = Struct_4(~select(-firstTrailingBit(vec2<i32>(-9230i, u_input.a)), select(vec2<i32>(28908i, 43768i), vec2<i32>(1i, u_input.a), true) ^ abs(vec2<i32>(70544i, 5203i)), !select(vec2<bool>(var_1.b.e, false), vec2<bool>(var_1.b.e, false), true)), countOneBits(u_input.a) == -_wgslsmith_add_i32(u_input.a, u_input.a), vec3<i32>(u_input.a, -2147483647i, max(_wgslsmith_div_i32(-u_input.a, u_input.a), select(u_input.a, ~2147483647i, var_1.b.e))), ~_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, u_input.b, u_input.b), var_0.a), var_1.b.a));
    var_1 = global0[_wgslsmith_index_u32(var_3.d.x, 22u)];
    return -799f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    var var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) == 105f);
    let var_1 = !vec4<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), true, !(!(u_input.c <= u_input.c)), true);
    var_0 = !any(var_1.zxz);
    let x = u_input.a;
    s_output = StorageBuffer(61710u, 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1631f, -579f, 191f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1294f, -2036f, 827f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1497f, -568f, -653f))))));
}

