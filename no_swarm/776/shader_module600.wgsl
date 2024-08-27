struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(Struct_2(Struct_1(vec4<u32>(14006u, 1u, 46381u, 1u), 2222f, 18376i, vec4<u32>(14545u, 69475u, 4294967295u, 4294967295u), -673f), 1i, -1865f, false, vec4<i32>(-1i, 1i, 53901i, 36627i)), Struct_2(Struct_1(vec4<u32>(1u, 1u, 0u, 1u), -766f, i32(-2147483648), vec4<u32>(20317u, 1044u, 43009u, 1u), 1054f), 7318i, 926f, true, vec4<i32>(-52043i, 39928i, 0i, 15713i))));

var<private> global1: bool;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<u32>(20662u, 1u, 60032u, 3962u), 2246f, 26289i, vec4<u32>(1u, 86232u, 1u, 68226u), 280f), -1655i, -984f, false, vec4<i32>(i32(-2147483648), i32(-2147483648), -19352i, 17875i));

var<private> global3: array<Struct_1, 27>;

var<private> global4: array<u32, 10>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    global1 = true;
    global3 = array<Struct_1, 27>();
    let var_0 = Struct_2(Struct_1(~global2.a.d, -423f, ~_wgslsmith_mod_i32(reverseBits(-9163i), 20351i), ~countOneBits(u_input.a), -858f), ~_wgslsmith_add_i32(~(-47220i), firstTrailingBit(_wgslsmith_mod_i32(2140i, u_input.d))), -672f, true, vec4<i32>(abs(0i), 2147483647i, global2.e.x, -_wgslsmith_mod_i32(~2756i, global2.b)));
    global1 = global2.d;
    var var_1 = 13895u;
    return -u_input.c & vec4<i32>(-14520i, global2.e.x, -_wgslsmith_add_i32(reverseBits(25561i), _wgslsmith_clamp_i32(-26i, var_0.a.c, var_0.a.c)), -32404i);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(firstLeadingBit(107501u), ~_wgslsmith_dot_vec3_u32(u_input.a.zzz ^ vec3<u32>(28625u, 5352u, u_input.b), global2.a.d.yxw), global2.a.a.x, firstTrailingBit(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~21711u, global4[_wgslsmith_index_u32(51239u, 10u)]), 10u)])), 382f, _wgslsmith_sub_i32(-abs(-u_input.c.x), 26577i), u_input.a, 1441f);
    let var_1 = global2.a;
    let var_2 = global2.d;
    var var_3 = Struct_1(~(~(~reverseBits(global2.a.d))), 592f, min(global2.e.x, _wgslsmith_dot_vec4_i32(func_3(), min(u_input.c, u_input.c | u_input.c))), vec4<u32>(_wgslsmith_clamp_u32(global2.a.d.x, global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(var_0.d, u_input.a), 10u)], ~1u), global4[_wgslsmith_index_u32(var_1.a.x, 10u)] | _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(var_0.d.x, 10u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(45085u, 10u)], 1u, 4294967295u), var_0.d.wyx), reverseBits(u_input.b)), reverseBits(0u), ~var_0.a.x), var_1.b);
    global3 = array<Struct_1, 27>();
    return global3[_wgslsmith_index_u32(reverseBits(25638u), 27u)];
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: u32) -> vec4<u32> {
    global3 = array<Struct_1, 27>();
    let var_0 = !(!vec2<bool>(228f == global2.a.e, true));
    let var_1 = Struct_2(func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(568f, 567f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -817f, arg_2.x, arg_0)) + vec4<f32>(_wgslsmith_div_f32(global2.a.e, 1668f), _wgslsmith_f_op_f32(ceil(arg_2.x)), 1654f, _wgslsmith_f_op_f32(-800f + 1163f)))), 46042i, _wgslsmith_f_op_f32(f32(-1f) * -479f), true, abs(firstTrailingBit(reverseBits(vec4<i32>(1i, u_input.d, 1i, global2.a.c))) >> (firstLeadingBit(~u_input.a) % vec4<u32>(32u))));
    let var_2 = arg_3;
    var var_3 = func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(253f * arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1172f)), true)), arg_0)), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1399f * _wgslsmith_f_op_f32(ceil(var_1.a.e)))), 767f, -1000f));
    return var_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.zxw;
    let var_1 = ~(vec2<u32>(global2.a.d.x, firstLeadingBit(u_input.b) | ~0u) << (~(_wgslsmith_add_vec2_u32(u_input.a.xy, u_input.a.yy) ^ var_0.zz) % vec2<u32>(32u)));
    global1 = global2.d;
    let var_2 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(global2.a.a.x & 10041u, _wgslsmith_clamp_u32(4294967295u, global4[_wgslsmith_index_u32(4294967295u, 10u)], global4[_wgslsmith_index_u32(42053u, 10u)])) & min(_wgslsmith_mod_u32(var_0.x, var_1.x), global2.a.d.x), _wgslsmith_dot_vec4_u32(global2.a.d | u_input.a, reverseBits(vec4<u32>(48556u, 57833u, global2.a.a.x, 101976u) >> (vec4<u32>(var_1.x, 922u, 0u, 62803u) % vec4<u32>(32u))))), 27u)], 0i ^ global2.e.x, -1270f, !any(vec3<bool>(global2.d, all(vec4<bool>(global2.d, global2.d, global2.d, global2.d)), true)), u_input.c);
    let var_3 = ~firstLeadingBit(vec4<i32>(-1i) * -(vec4<i32>(var_2.e.x, var_2.a.c, -10981i, 14064i) >> (vec4<u32>(4294967295u, 1u, 59426u, 40554u) % vec4<u32>(32u))));
    let var_4 = Struct_1(vec4<u32>(firstLeadingBit(reverseBits(~34831u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 13813u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.d.x, 139530u, var_2.a.a.x), vec3<u32>(var_2.a.a.x, 31432u, var_0.x))), var_2.a.d.yzw), global2.a.d.x, var_2.a.a.x), -818f, ~_wgslsmith_mult_i32(u_input.d, 1i), vec4<u32>(1u, global4[_wgslsmith_index_u32(abs(0u), 10u)] >> (1u % 32u), _wgslsmith_add_u32(var_0.x, 4294967295u) >> ((895u >> (var_2.a.a.x % 32u)) % 32u), ~var_2.a.a.x) ^ func_1(_wgslsmith_f_op_f32(-166f + _wgslsmith_f_op_f32(-global2.a.e)), u_input.a, _wgslsmith_div_vec4_f32(vec4<f32>(var_2.c, -566f, var_2.a.e, global2.a.b), _wgslsmith_div_vec4_f32(vec4<f32>(global2.c, global2.a.e, var_2.a.e, global2.c), vec4<f32>(-279f, var_2.a.e, var_2.c, global2.a.e))), _wgslsmith_dot_vec2_u32(u_input.a.yw, ~var_0.yx)), _wgslsmith_f_op_f32(var_2.a.e * global2.c));
    let x = u_input.a;
    s_output = StorageBuffer(min(global2.a.a.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global2.a.d.x, 1u, global4[_wgslsmith_index_u32(u_input.a.x, 10u)], 60507u)), u_input.a)), ~firstTrailingBit(vec3<u32>(1u, _wgslsmith_div_u32(global4[_wgslsmith_index_u32(4294967295u, 10u)], 0u), global4[_wgslsmith_index_u32(1u, 10u)])));
}

