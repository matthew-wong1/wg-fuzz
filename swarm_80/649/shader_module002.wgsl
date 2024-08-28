struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<f32>(783f, 226f), vec4<i32>(i32(-2147483648), 1i, -13865i, 1i), 9528u, vec2<u32>(1u, 28887u)), Struct_1(vec2<f32>(694f, 746f), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 5585i), 0u, vec2<u32>(0u, 47238u)), Struct_1(vec2<f32>(-545f, -178f), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -1i), 51007u, vec2<u32>(36728u, 4294967295u)), Struct_1(vec2<f32>(1112f, 2010f), vec4<i32>(i32(-2147483648), 69346i, 40039i, -2604i), 4294967295u, vec2<u32>(13477u, 18323u)), Struct_1(vec2<f32>(-2493f, -566f), vec4<i32>(0i, 1i, 2147483647i, -185i), 4294967295u, vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<f32>(-1223f, 1457f), vec4<i32>(15025i, 0i, i32(-2147483648), -1i), 0u, vec2<u32>(10984u, 1u)), Struct_1(vec2<f32>(109f, -166f), vec4<i32>(1i, i32(-2147483648), 1i, 26991i), 140213u, vec2<u32>(16199u, 1u)), Struct_1(vec2<f32>(-384f, 146f), vec4<i32>(44115i, 1i, -2795i, 0i), 4294967295u, vec2<u32>(0u, 37330u)), Struct_1(vec2<f32>(-962f, -1000f), vec4<i32>(2147483647i, 2147483647i, 29788i, -22169i), 4294967295u, vec2<u32>(7259u, 0u)), Struct_1(vec2<f32>(-284f, 1000f), vec4<i32>(-8559i, -2193i, 36108i, 24284i), 20978u, vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<f32>(1962f, -1000f), vec4<i32>(0i, -1i, 1i, 1i), 0u, vec2<u32>(1u, 1u)), Struct_1(vec2<f32>(-1350f, 100f), vec4<i32>(39871i, 52860i, -36999i, 2147483647i), 4294967295u, vec2<u32>(1u, 45427u)), Struct_1(vec2<f32>(-1415f, -1032f), vec4<i32>(0i, i32(-2147483648), -33811i, 0i), 67881u, vec2<u32>(1343u, 4294967295u)), Struct_1(vec2<f32>(-250f, 564f), vec4<i32>(i32(-2147483648), -11208i, 1i, 1i), 76537u, vec2<u32>(95755u, 4294967295u)), Struct_1(vec2<f32>(181f, -1441f), vec4<i32>(15556i, 27659i, 2561i, 0i), 1u, vec2<u32>(4294967295u, 1u)), Struct_1(vec2<f32>(-340f, -719f), vec4<i32>(0i, i32(-2147483648), 0i, 15998i), 2130u, vec2<u32>(17639u, 0u)), Struct_1(vec2<f32>(1681f, 1256f), vec4<i32>(2147483647i, i32(-2147483648), 13799i, -19121i), 1u, vec2<u32>(4294967295u, 22089u)), Struct_1(vec2<f32>(1000f, 1532f), vec4<i32>(-23931i, 2744i, -1i, 2147483647i), 0u, vec2<u32>(28290u, 24560u)), Struct_1(vec2<f32>(-771f, 827f), vec4<i32>(-27078i, 0i, 2147483647i, 58624i), 49883u, vec2<u32>(19517u, 4294967295u)), Struct_1(vec2<f32>(-559f, -1201f), vec4<i32>(2147483647i, -84771i, -8047i, i32(-2147483648)), 0u, vec2<u32>(15654u, 0u)));

var<private> global1: array<f32, 4> = array<f32, 4>(825f, 102f, -513f, 970f);

var<private> global2: array<bool, 9>;

var<private> global3: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: f32) -> Struct_3 {
    global1 = array<f32, 4>();
    let var_0 = 0i;
    global3 = _wgslsmith_mod_u32(_wgslsmith_div_u32(abs(4294967295u), 39087u), u_input.b.x);
    let var_1 = _wgslsmith_f_op_f32(-arg_0);
    global0 = array<Struct_1, 20>();
    return Struct_3(global0[_wgslsmith_index_u32(~reverseBits(_wgslsmith_mod_u32(max(37552u, 49912u), u_input.b.x)), 20u)], u_input.b);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    let var_0 = arg_3.x;
    var var_1 = false;
    var_1 = global2[_wgslsmith_index_u32(~(~arg_0.a.d.x) & ~_wgslsmith_dot_vec2_u32(vec2<u32>(abs(arg_2.c), 0u), _wgslsmith_sub_vec2_u32(min(arg_2.d, vec2<u32>(1504u, 1u)), _wgslsmith_clamp_vec2_u32(u_input.b.yz, arg_2.d, arg_0.a.d))), 9u)];
    global2 = array<bool, 9>();
    var var_2 = func_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1517f - arg_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 - arg_1.x)))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(trunc(var_0)))))).a;
    return firstTrailingBit(var_2.d.x);
}

fn func_1() -> Struct_3 {
    global3 = u_input.b.x;
    global1 = array<f32, 4>();
    global1 = array<f32, 4>();
    let var_0 = ~_wgslsmith_sub_vec3_i32(-vec3<i32>(~u_input.a.x, ~(-2147483647i), ~u_input.a.x), vec3<i32>(u_input.a.x, -_wgslsmith_add_i32(1i, u_input.a.x), u_input.a.x));
    global0 = array<Struct_1, 20>();
    return Struct_3(global0[_wgslsmith_index_u32(~(18473u & func_3(func_2(498f), vec2<f32>(175f, -1058f), func_2(461f).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-790f, global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], -1602f)))), 20u)], min(u_input.b, reverseBits(u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(~func_3(Struct_3(Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(var_0.a.d.x, 4u)], var_0.a.a.x), vec4<i32>(var_0.a.b.x, -1i, u_input.a.x, u_input.a.x), 1u, u_input.b.yz), var_0.b), var_0.a.a, global0[_wgslsmith_index_u32(21657u, 20u)], vec4<f32>(172f, -1567f, -1026f, global1[_wgslsmith_index_u32(u_input.b.x, 4u)])), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.c, 102570u, 0u), vec3<u32>(var_0.b.x, 2491u, var_0.b.x)), select(0u, u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 9u)])), abs(select(9188u, 1u, global2[_wgslsmith_index_u32(var_0.b.x, 9u)]))), select(u_input.b, var_0.b, any(vec2<bool>(true, true))));
    var var_2 = var_0.a;
    global2 = array<bool, 9>();
    let var_3 = Struct_2(true, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.a.x - 1000f))))).a, vec2<i32>(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-549f)), _wgslsmith_f_op_f32(select(var_2.a.x, var_0.a.a.x, global2[_wgslsmith_index_u32(1u, 9u)])))).a.b.x, abs(~var_2.b.x)), vec4<bool>(!(1u != ~var_2.d.x), global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(~reverseBits(52330u), 9u)] || any(!vec2<bool>(global2[_wgslsmith_index_u32(var_0.a.d.x, 9u)], true)), !(!(!global2[_wgslsmith_index_u32(u_input.b.x, 9u)]))), vec2<u32>(1u, ~(~3579u)));
    var_0 = func_1();
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(75719i, u_input.a.x));
}

