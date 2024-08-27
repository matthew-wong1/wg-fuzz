struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<f32, 18> = array<f32, 18>(-355f, 497f, 121f, -1122f, 160f, 600f, 361f, 1369f, -447f, -2694f, -1219f, 1175f, 1000f, -1023f, -1752f, 292f, 869f, -729f);

var<private> global2: array<Struct_2, 15>;

var<private> global3: array<f32, 22> = array<f32, 22>(209f, 464f, 922f, -498f, -1446f, -122f, 184f, -144f, 234f, -982f, 267f, 248f, 946f, 1000f, -660f, 194f, -481f, 322f, -583f, 1784f, -137f, 464f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = -1580f;
    global0 = array<Struct_1, 6>();
    var var_1 = arg_0;
    global1 = array<f32, 18>();
    global2 = array<Struct_2, 15>();
    return var_0;
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    var var_0 = false;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(vec2<i32>(2147483647i, u_input.c), arg_0.c.b, arg_0.c.b, Struct_2(arg_0.a.a, -680f), 1u))) + _wgslsmith_f_op_f32(972f + global3[_wgslsmith_index_u32(u_input.b, 22u)])), 340f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1880f, _wgslsmith_f_op_f32(f32(-1f) * -509f))))));
    let var_2 = u_input.b;
    var var_3 = !all(arg_0.c.b.wx);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(-select(vec2<i32>(-45001i, arg_0.c.a), u_input.d.zx, false), arg_0.c.b, select(vec4<bool>(false, arg_0.c.c, false, arg_0.c.c), select(vec4<bool>(true, arg_0.c.b.x, arg_0.c.c, arg_0.c.c), arg_0.c.b, arg_0.c.c), !arg_0.c.b), arg_0.a, abs(0u)))) + arg_0.a.b);
    return Struct_4(u_input.a, vec4<bool>(true, u_input.c > u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2, u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(var_2, u_input.b))) < 1u, all(vec3<bool>(!arg_0.c.c, arg_0.c.b.x & false, any(vec4<bool>(true, true, arg_0.c.b.x, arg_0.c.c))))), vec4<bool>(true, true && select(false && arg_0.c.c, true, arg_0.c.c), true, !(any(arg_0.c.b.ww) || arg_0.c.c)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 4294967295u | u_input.b), 15u)], ~(~_wgslsmith_mod_u32(68019u, firstLeadingBit(var_2))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> Struct_4 {
    var var_0 = arg_2;
    global2 = array<Struct_2, 15>();
    let var_1 = ~reverseBits(max(~vec2<u32>(1u, u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(28675u, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<u32>(50290u, u_input.b))) << (_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(u_input.b, 3438u)) % vec2<u32>(32u)));
    var var_2 = arg_2.a;
    var var_3 = vec4<u32>(select(~var_1.x, 1u, arg_2.c.c), 0u, ~abs(~(~1u)), ~(~u_input.b));
    return func_2(arg_2);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = arg_1.e;
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 18>();
    let var_0 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 18u)]);
    global1 = array<f32, 18>();
    var var_1 = Struct_1(u_input.d.x, !select(func_4(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), func_1(Struct_1(u_input.d.x, vec4<bool>(true, false, false, false), false), false, Struct_3(global2[_wgslsmith_index_u32(u_input.b, 15u)], vec4<f32>(646f, global1[_wgslsmith_index_u32(u_input.b, 18u)], var_0, global3[_wgslsmith_index_u32(101196u, 22u)]), Struct_1(u_input.c, vec4<bool>(true, false, false, true), false)), 1068f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-544f, 239f) - vec2<f32>(1785f, global1[_wgslsmith_index_u32(0u, 18u)]))), vec4<bool>(true, true, true, true), !func_2(Struct_3(global2[_wgslsmith_index_u32(u_input.b, 15u)], vec4<f32>(1638f, -1036f, 1226f, var_0), global0[_wgslsmith_index_u32(u_input.b, 6u)])).c), true);
    var var_2 = global0[_wgslsmith_index_u32(u_input.b, 6u)];
    var_2 = Struct_1(_wgslsmith_add_i32(_wgslsmith_div_i32(func_1(Struct_1(var_2.a, vec4<bool>(true, var_2.c, var_1.c, var_1.c), false), var_2.b.x && false, Struct_3(global2[_wgslsmith_index_u32(u_input.b, 15u)], vec4<f32>(global1[_wgslsmith_index_u32(1u, 18u)], -1221f, var_0, global3[_wgslsmith_index_u32(u_input.b, 22u)]), Struct_1(u_input.d.x, var_1.b, true)), _wgslsmith_f_op_f32(max(var_0, global3[_wgslsmith_index_u32(u_input.b, 22u)]))).a.x, var_2.a), 2147483647i), select(var_1.b, var_1.b, vec4<bool>(true, all(var_2.b.zz) | false, true, false)), false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

