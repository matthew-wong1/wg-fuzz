struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(-2123f, vec4<bool>(false, false, true, false)), Struct_3(1610f, vec4<bool>(false, false, false, true)), Struct_3(1115f, vec4<bool>(true, false, false, false)), Struct_3(-178f, vec4<bool>(true, true, true, false)), Struct_3(578f, vec4<bool>(false, true, true, false)), Struct_3(1299f, vec4<bool>(true, false, true, false)), Struct_3(-1175f, vec4<bool>(true, true, false, false)), Struct_3(1491f, vec4<bool>(false, true, true, true)), Struct_3(-518f, vec4<bool>(true, false, false, true)), Struct_3(1878f, vec4<bool>(true, false, true, true)));

var<private> global1: array<Struct_1, 13>;

var<private> global2: Struct_1 = Struct_1(70692u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> i32 {
    let var_0 = abs(171568u);
    let var_1 = Struct_1(~u_input.c);
    global1 = array<Struct_1, 13>();
    let var_2 = global0[_wgslsmith_index_u32(0u, 10u)];
    let var_3 = _wgslsmith_f_op_f32(min(1289f, _wgslsmith_f_op_f32(sign(2172f))));
    return 1i;
}

fn func_1(arg_0: i32) -> vec2<i32> {
    global1 = array<Struct_1, 13>();
    let var_0 = Struct_1(1u);
    return vec2<i32>(func_2(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), true), 395f), ~u_input.a.x);
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: i32) -> vec4<u32> {
    var var_0 = arg_1;
    let var_1 = countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(~17715u, 3145u & ~u_input.d.x, 29219u & u_input.c, 9355u), _wgslsmith_sub_vec4_u32(~max(vec4<u32>(u_input.c, 49792u, u_input.b.x, 1u), vec4<u32>(global2.a, 3700u, global2.a, u_input.d.x)), ~vec4<u32>(u_input.b.x, 4294967295u, 56334u, u_input.c))));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1051f, -1000f, -297f, var_0.x)))))))));
    var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1384f), arg_1.x, var_0.x);
    var var_2 = u_input.a;
    return var_1 | _wgslsmith_add_vec4_u32(var_1, vec4<u32>(_wgslsmith_mod_u32(4294967295u, 1u), abs(~u_input.c), _wgslsmith_sub_u32(global2.a, 16916u ^ var_1.x), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(u_input.a.x & u_input.a.x);
    global0 = array<Struct_3, 10>();
    var var_1 = 1i;
    global1 = array<Struct_1, 13>();
    let var_2 = ~u_input.a.x;
    var var_3 = _wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, _wgslsmith_mult_i32(u_input.a.x, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2, u_input.a.x, u_input.a.x), vec3<i32>(var_2, 1i, -1i)), ~u_input.a.x) << (func_3(true, vec4<f32>(347f, _wgslsmith_f_op_f32(-767f - -207f), -1965f, -1108f), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a.x, 1541i), vec2<i32>(u_input.a.x, var_2), vec2<bool>(false, true)), func_1(u_input.a.x))) % vec4<u32>(32u)), min(max(vec4<i32>(u_input.a.x, var_2, 13097i, var_2), firstTrailingBit(vec4<i32>(var_2, 1i, var_2, 1i))) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -9983i, u_input.a.x, var_2), vec4<i32>(u_input.a.x, var_2, 2147483647i, 1i) | vec4<i32>(u_input.a.x, u_input.a.x, var_2, -2147483647i)), vec4<i32>(-5119i, 0i, ~var_2, _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_2, 13835i), -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(276f * -1733f))) * 403f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1166f))))), abs(firstTrailingBit(firstTrailingBit(firstTrailingBit(0i)))), max(max(-firstLeadingBit(var_3.zzw), var_3.yyw), reverseBits(vec3<i32>(var_3.x, max(var_2, 2147483647i), abs(var_3.x)))), ~0i);
}

