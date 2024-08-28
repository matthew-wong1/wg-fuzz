struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec2<u32>(0u, 1u), 4294967295u), Struct_2(vec2<u32>(4294967295u, 4294967295u), 51234u), Struct_2(vec2<u32>(1u, 0u), 32616u), Struct_2(vec2<u32>(2875u, 1u), 93604u), Struct_2(vec2<u32>(118996u, 1u), 50454u), Struct_2(vec2<u32>(37434u, 0u), 4294967295u), Struct_2(vec2<u32>(4294967295u, 4616u), 13049u), Struct_2(vec2<u32>(83451u, 4294967295u), 4294967295u));

var<private> global2: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(1u, 4929u, 4294967295u, 0u), vec4<u32>(27704u, 1u, 65471u, 1u), vec4<u32>(18300u, 0u, 1u, 44105u), vec4<u32>(0u, 8975u, 0u, 0u), vec4<u32>(49047u, 4294967295u, 51281u, 38305u), vec4<u32>(33342u, 6777u, 1u, 36616u), vec4<u32>(1u, 140989u, 31336u, 10115u), vec4<u32>(1u, 19273u, 0u, 21247u), vec4<u32>(16271u, 41899u, 6212u, 10217u), vec4<u32>(4294967295u, 35341u, 4294967295u, 0u), vec4<u32>(41220u, 4294967295u, 54864u, 0u), vec4<u32>(51149u, 49807u, 1396u, 0u), vec4<u32>(12467u, 0u, 14516u, 31760u), vec4<u32>(15202u, 47900u, 35649u, 4294967295u), vec4<u32>(4294967295u, 2541u, 1u, 0u), vec4<u32>(45549u, 0u, 30537u, 17410u), vec4<u32>(36172u, 0u, 21376u, 40148u), vec4<u32>(13565u, 24683u, 0u, 32670u), vec4<u32>(49872u, 24275u, 61994u, 4294967295u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)));
    global2 = array<vec4<u32>, 19>();
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(786f, var_0, -1975f, -514f), vec4<f32>(arg_1, 1620f, -495f, var_0))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(885f, -944f, var_0, arg_1) + vec4<f32>(-1096f, arg_1, arg_1, arg_1))))))));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(countOneBits(abs(vec2<u32>(67105u, 0u))), countOneBits(vec2<u32>(_wgslsmith_mod_u32(60492u, 59413u), ~4294967295u))), 1u);
    let var_3 = global1[_wgslsmith_index_u32(4294967295u, 8u)];
    return !all(select(select(vec4<bool>(arg_0.x, false, arg_0.x, true), !vec4<bool>(arg_0.x, false, arg_0.x, global0.x), !vec4<bool>(arg_0.x, arg_0.x, global0.x, global0.x)), vec4<bool>(global0.x && arg_0.x, any(vec4<bool>(false, global0.x, arg_0.x, arg_0.x)), arg_0.x, true), any(arg_0.zy)));
}

fn func_2() -> f32 {
    var var_0 = Struct_2(vec2<u32>(~4294967295u, abs(1u)), abs(1u));
    var var_1 = false;
    var var_2 = vec3<bool>(_wgslsmith_mult_u32(~(~44877u), abs(var_0.a.x)) <= var_0.a.x, true, func_3(vec3<bool>(global0.x, any(vec4<bool>(global0.x, false, global0.x, global0.x)), false), 118f));
    global1 = array<Struct_2, 8>();
    let var_3 = vec2<u32>(~(~reverseBits(var_0.b) | var_0.b), var_0.a.x);
    return -330f;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(-1308f))))), _wgslsmith_f_op_f32(func_2()));
    let var_1 = Struct_1(!(!select(arg_1 < -34370i, all(vec2<bool>(arg_2.x, global0.x)), func_3(vec3<bool>(arg_2.x, true, true), var_0.x))), true);
    let var_2 = _wgslsmith_f_op_f32(sign(var_0.x));
    global2 = array<vec4<u32>, 19>();
    var var_3 = !arg_2;
    return select(select(vec2<bool>(false, var_1.b), select(vec2<bool>(select(var_1.b, false, var_1.b), global0.x), vec2<bool>(true, !var_3.x), true == var_1.b), true), vec2<bool>(all(vec2<bool>(global0.x, true)), any(vec2<bool>(all(vec4<bool>(arg_2.x, false, arg_2.x, var_3.x)), global0.x | var_1.b))), vec2<bool>(false, 1i <= _wgslsmith_mod_i32(26010i, abs(arg_1))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: u32) -> Struct_2 {
    global0 = !vec3<bool>(arg_0.x, arg_0.x, !arg_1.x & global0.x);
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_add_u32(~arg_3, _wgslsmith_add_u32(_wgslsmith_div_u32(~13409u, ~(arg_3 << (90395u % 32u))), 0u));
    global0 = !(!vec3<bool>(arg_0.x, global0.x, false));
    var var_2 = true;
    return global1[_wgslsmith_index_u32(~arg_3, 8u)];
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = arg_2;
    global2 = array<vec4<u32>, 19>();
    let var_1 = global1[_wgslsmith_index_u32(min(~arg_2.b, 1u), 8u)];
    global0 = vec3<bool>(all(vec4<bool>(false, (var_1.b ^ var_1.b) < var_1.a.x, global0.x, !any(vec2<bool>(global0.x, arg_1.a)))), !func_3(vec3<bool>(any(vec2<bool>(true, arg_1.a)), !global0.x, var_1.a.x <= 1u), _wgslsmith_f_op_f32(-528f * _wgslsmith_f_op_f32(f32(-1f) * -1947f))), global0.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(-u_input.a.x, Struct_1(!global0.x, false), func_4(func_1(global1[_wgslsmith_index_u32(3354u, 8u)], 0i, select(!global0.yy, !vec2<bool>(global0.x, false), !global0.x)), vec3<bool>(true, !global0.x, false), !(!vec3<bool>(global0.x, false, false)), 18064u), _wgslsmith_sub_vec2_i32(u_input.a.xw, ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, -43666i) | vec2<i32>(-31466i, u_input.a.x), u_input.a.yw)));
    var var_1 = _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(firstTrailingBit(1u), _wgslsmith_mod_u32(61041u, 1u), 4294967295u, ~58078u) << (_wgslsmith_mult_vec4_u32(~global2[_wgslsmith_index_u32(4294967295u, 19u)], ~vec4<u32>(1u, 42482u, 1u, 0u)) % vec4<u32>(32u))), vec4<u32>(0u, 9267u, ~1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mod_vec3_u32(vec3<u32>(133297u, ~2714u, 218u), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 20106u, 1u), true)), vec3<u32>(1u, 1u, 1u), global0.x), -2147483647i | firstTrailingBit(u_input.a.x << (func_4(vec2<bool>(global0.x, var_0.a), vec3<bool>(var_0.b, false, true), vec3<bool>(true, false, false), 36179u).b % 32u)), ~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, 51998u), 24936u << (1u % 32u)), 19u)] << (abs(~vec4<u32>(4294967295u, 58987u, 4294967295u, 4294967295u)) % vec4<u32>(32u)));
}

