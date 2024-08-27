struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28>;

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(-38546i, Struct_1(true), vec4<bool>(false, true, true, false)), Struct_2(1i, Struct_1(false), vec4<bool>(false, true, false, true)), Struct_2(2147483647i, Struct_1(false), vec4<bool>(false, true, false, true)), Struct_2(i32(-2147483648), Struct_1(false), vec4<bool>(false, false, false, true)), Struct_2(i32(-2147483648), Struct_1(false), vec4<bool>(false, false, true, false)));

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: vec3<bool>) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(90261u, 5u)];
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_div_u32(u_input.a.x, 1u);
    global0 = array<vec3<i32>, 28>();
    global0 = array<vec3<i32>, 28>();
    return _wgslsmith_add_i32(1i, -1i);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    global2 = array<Struct_1, 12>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x))), -1304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, -1000f))), arg_2.x, arg_0.c.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_2.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2796f - arg_2.x) + -1107f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) - 490f), _wgslsmith_f_op_f32(min(arg_2.x, -941f))))));
    global1 = array<Struct_2, 5>();
    let var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 12u)];
    global0 = array<vec3<i32>, 28>();
    return _wgslsmith_f_op_f32(ceil(arg_2.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~4294967295u, 28u)];
    var var_1 = vec4<u32>(~2123u, 1u, _wgslsmith_dot_vec4_u32(~(abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)) >> (~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u) % vec4<u32>(32u))), abs(~vec4<u32>(44875u, u_input.a.x, 1u, u_input.a.x) << (reverseBits(vec4<u32>(u_input.a.x, 1u, 48541u, u_input.a.x)) % vec4<u32>(32u)))), u_input.a.x);
    global0 = array<vec3<i32>, 28>();
    let var_2 = arg_2;
    var var_3 = Struct_1(false);
    return _wgslsmith_sub_u32(u_input.a.x, ~var_1.x);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(!(func_2(_wgslsmith_f_op_f32(f32(-1f) * -934f), ~81286u, _wgslsmith_div_i32(1i, 2147483647i), vec3<bool>(true, true, true)) > u_input.d.x));
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(647f, -988f) - vec2<f32>(-1156f, -575f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(610f, 994f), vec2<f32>(-330f, 929f), var_0.a))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-369f, _wgslsmith_f_op_f32(abs(828f)))))), Struct_2(-14499i, var_0, vec4<bool>(var_0.a, true, all(!vec3<bool>(true, var_0.a, var_0.a)), _wgslsmith_f_op_f32(round(-751f)) > _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], 2147483647i, vec3<f32>(-1000f, 894f, -883f))))), var_0, global1[_wgslsmith_index_u32(abs(38624u), 5u)]);
    global2 = array<Struct_1, 12>();
    let var_2 = Struct_1(var_0.a);
    let var_3 = Struct_2(arg_0, var_0, vec4<bool>(var_2.a, any(select(vec2<bool>(var_2.a, false), vec2<bool>(false, var_2.a), vec2<bool>(false, var_2.a))) & var_0.a, !(!(var_1 != u_input.a.x)), all(vec3<bool>(!var_2.a, true, true))));
    return Struct_1(true);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    let var_0 = 2147483647i == u_input.c;
    global2 = array<Struct_1, 12>();
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(arg_3));
    var var_2 = firstLeadingBit(vec4<u32>(4294967295u, max(u_input.a.x, func_4(vec2<f32>(arg_0, var_1.x), global1[_wgslsmith_index_u32(4294967295u, 5u)], arg_2, global1[_wgslsmith_index_u32(40699u, 5u)])), 4294967295u, u_input.a.x)) << (countOneBits(select((vec4<u32>(1u, 28641u, u_input.a.x, u_input.a.x) | vec4<u32>(u_input.a.x, 4245u, u_input.a.x, u_input.a.x)) >> (select(vec4<u32>(45319u, 1u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x), vec4<bool>(true, arg_1.a, true, false)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(20468u, 79674u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 26115u, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 67905u), vec4<u32>(9791u, 56158u, u_input.a.x, u_input.a.x))), select(vec4<bool>(true, true, false, true), select(vec4<bool>(var_0, arg_1.a, var_0, arg_1.a), vec4<bool>(arg_1.a, true, arg_1.a, var_0), vec4<bool>(arg_1.a, true, var_0, var_0)), true))) % vec4<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_1.xz);
    return countOneBits(var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 5>();
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, abs(_wgslsmith_div_u32(~(~4294967295u), func_5(-189f, Struct_1(true), func_1(43316i), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1264f, 503f, -583f), vec3<f32>(-607f, -870f, 545f), vec3<bool>(false, true, false))))))), 12u)];
    global1 = array<Struct_2, 5>();
    var_0 = Struct_1(func_1(41091i).a);
    var var_1 = vec2<bool>(select(all(select(vec3<bool>(var_0.a, false, false), vec3<bool>(false, false, true), !var_0.a)), var_0.a, true), var_0.a);
    let var_2 = firstTrailingBit(~u_input.a);
    var var_3 = abs(u_input.b);
    var var_4 = vec3<i32>(_wgslsmith_sub_i32(-_wgslsmith_add_i32(reverseBits(u_input.c), abs(31655i)), -1i), _wgslsmith_add_i32(reverseBits(select(0i, -2147483647i, false)), -firstLeadingBit(2147483647i)) >> (_wgslsmith_mod_u32(1u, u_input.a.x) % 32u), u_input.e);
    let var_5 = _wgslsmith_f_op_f32(-1599f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-925f + _wgslsmith_f_op_f32(select(-593f, -1194f, false))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_2(var_4.x, Struct_1(true), vec4<bool>(var_0.a, true, false, var_0.a)), ~u_input.e, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-758f, -1359f, -1042f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -365f) * _wgslsmith_f_op_f32(f32(-1f) * -122f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(select(vec3<i32>(~u_input.d.x, -var_4.x, 0i), vec3<i32>(-1i) * -vec3<i32>(-19569i, -26877i, u_input.c), select(!vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(true, true, true), true)), -(vec3<i32>(0i, -22558i, var_4.x) & (vec3<i32>(var_4.x, 9798i, u_input.c) & global0[_wgslsmith_index_u32(39685u, 28u)]))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(max(vec2<i32>(var_4.x, u_input.c), vec2<i32>(u_input.d.x, -7016i)), max(vec2<i32>(u_input.b, -85118i), vec2<i32>(var_4.x, u_input.d.x))) & -select(vec2<i32>(-2147483647i, 0i), vec2<i32>(u_input.c, 13858i), vec2<bool>(false, var_0.a)), u_input.d.zw));
}

