struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(9574u, 1u, 31553u), Struct_1(true, vec4<bool>(true, true, false, true)));

var<private> global2: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec3<u32>(0u, 46989u, 15607u), Struct_1(true, vec4<bool>(true, true, true, true))), Struct_2(vec3<u32>(34556u, 1u, 4294967295u), Struct_1(false, vec4<bool>(false, false, false, false))), Struct_2(vec3<u32>(0u, 4294967295u, 4294967295u), Struct_1(true, vec4<bool>(false, false, false, true))), Struct_2(vec3<u32>(41487u, 0u, 0u), Struct_1(true, vec4<bool>(true, true, false, true))), Struct_2(vec3<u32>(1u, 22086u, 49606u), Struct_1(false, vec4<bool>(false, false, false, true))), Struct_2(vec3<u32>(63381u, 1u, 90835u), Struct_1(false, vec4<bool>(true, true, true, false))), Struct_2(vec3<u32>(20458u, 0u, 54473u), Struct_1(true, vec4<bool>(true, true, true, false))), Struct_2(vec3<u32>(22287u, 39327u, 0u), Struct_1(true, vec4<bool>(true, true, false, false))), Struct_2(vec3<u32>(22766u, 1u, 0u), Struct_1(true, vec4<bool>(true, true, false, true))), Struct_2(vec3<u32>(0u, 1u, 4294967295u), Struct_1(true, vec4<bool>(true, true, false, true))), Struct_2(vec3<u32>(1356u, 1u, 1u), Struct_1(false, vec4<bool>(false, true, true, false))), Struct_2(vec3<u32>(1u, 4294967295u, 27280u), Struct_1(false, vec4<bool>(false, false, false, false))), Struct_2(vec3<u32>(1u, 75481u, 4294967295u), Struct_1(false, vec4<bool>(true, true, true, true))), Struct_2(vec3<u32>(4980u, 0u, 1u), Struct_1(true, vec4<bool>(false, false, false, true))));

var<private> global3: bool = true;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    global0 = array<i32, 5>();
    global3 = arg_0.b.a;
    var var_0 = any(vec2<bool>(all(select(global4.b.zyy, global4.b.zwz, vec3<bool>(true, false, false))), !arg_0.b.a & arg_0.b.b.x));
    let var_1 = global2[_wgslsmith_index_u32(arg_0.a.x, 14u)];
    global3 = false;
    return var_1.b.b;
}

fn func_2(arg_0: vec2<f32>) -> vec4<bool> {
    global2 = array<Struct_2, 14>();
    let var_0 = ~(max(reverseBits(vec3<u32>(global1.a.x, global1.a.x, 39466u)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, 7562u, global1.a.x), vec3<u32>(63536u, 0u, u_input.e)), ~vec3<u32>(0u, u_input.e, 0u) | _wgslsmith_sub_vec3_u32(global1.a, vec3<u32>(global1.a.x, 4294967295u, 3598u))) & ~(vec3<u32>(32u, 8166u, u_input.a.x) >> (global1.a % vec3<u32>(32u))));
    let var_1 = global1.a.yz;
    global1 = Struct_2(global1.a, global1.b);
    let var_2 = global1.b;
    return !func_3(global2[_wgslsmith_index_u32(4294967295u, 14u)]);
}

fn func_1() -> Struct_1 {
    let var_0 = !(any(global4.b) && select(global4.b.x, global4.a, all(func_2(vec2<f32>(1221f, -387f)))));
    var var_1 = -1537f;
    global2 = array<Struct_2, 14>();
    var var_2 = u_input.a.x;
    global1 = global2[_wgslsmith_index_u32(4294967295u, 14u)];
    return global1.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    var var_0 = func_1().b.x || !(1i < (min(global0[_wgslsmith_index_u32(10597u, 5u)], 3178i) >> (countOneBits(u_input.e) % 32u)));
    let var_1 = arg_2.x;
    let var_2 = -175f;
    global4 = arg_0;
    global3 = global1.b.a;
    return ~15466u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b.b.yxz;
    global1 = global2[_wgslsmith_index_u32(func_4(global1.b, func_1(), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -523f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(131f, -378f))), _wgslsmith_f_op_f32(-144f * _wgslsmith_f_op_f32(floor(-789f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1373f, -659f))), _wgslsmith_f_op_f32(step(-1070f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 513f)))), 14u)];
    global1 = Struct_2(vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~global1.a.x, select(20588u, global1.a.x, global4.a)), 4294967295u, 1u), ~global1.a.x), Struct_1(!all(func_2(vec2<f32>(-360f, -540f)).zxw), global4.b));
    global3 = any(global4.b.xyz);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(25990i), max(-22041i, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(5292i, u_input.b.x), u_input.d)), global0[_wgslsmith_index_u32(max(countOneBits(u_input.a.x), ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(91276u, u_input.e, u_input.a.x, 61312u))), 5u)]), global0[_wgslsmith_index_u32(global1.a.x, 5u)] ^ -u_input.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-440f * -759f)) + -876f), -1120f)), _wgslsmith_div_u32(u_input.e, 4294967295u | (53683u & reverseBits(global1.a.x))), vec3<i32>(u_input.b.x, min(~1i, _wgslsmith_div_i32(-27508i, -35857i)), -_wgslsmith_div_i32(-58082i, 2147483647i)) & ((countOneBits(vec3<i32>(80650i, global0[_wgslsmith_index_u32(0u, 5u)], u_input.c)) | (vec3<i32>(global0[_wgslsmith_index_u32(1u, 5u)], u_input.c, u_input.b.x) ^ vec3<i32>(u_input.c, u_input.c, global0[_wgslsmith_index_u32(51635u, 5u)]))) << (global1.a % vec3<u32>(32u))));
}

