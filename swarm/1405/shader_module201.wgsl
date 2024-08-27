struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, true, false), -14714i, 1046f);

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<bool>(true, false, true, true), i32(-2147483648), 638f), Struct_1(vec4<bool>(true, true, false, false), -39528i, 915f), Struct_1(vec4<bool>(false, true, false, true), 1i, 553f), Struct_1(vec4<bool>(false, true, false, false), 28068i, -271f), Struct_1(vec4<bool>(false, false, true, true), 1i, 1034f), Struct_1(vec4<bool>(false, false, true, true), 1i, 162f), Struct_1(vec4<bool>(true, false, true, true), 2147483647i, -1877f), Struct_1(vec4<bool>(false, true, false, false), 42236i, -1000f), Struct_1(vec4<bool>(true, true, false, false), 8262i, -1000f), Struct_1(vec4<bool>(false, true, false, false), -50501i, 1830f), Struct_1(vec4<bool>(false, false, false, false), -4731i, -723f), Struct_1(vec4<bool>(false, true, false, true), 19970i, -388f), Struct_1(vec4<bool>(false, true, true, false), 1i, -1035f), Struct_1(vec4<bool>(false, true, true, false), -12981i, 374f), Struct_1(vec4<bool>(false, true, false, true), 2147483647i, 557f), Struct_1(vec4<bool>(false, false, false, true), 0i, 1073f), Struct_1(vec4<bool>(true, false, true, true), 1i, 486f), Struct_1(vec4<bool>(true, true, true, false), 36087i, -244f), Struct_1(vec4<bool>(true, false, true, true), -5207i, -279f));

var<private> global3: u32 = 4094u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = arg_1.a.xyx;
    global2 = array<Struct_1, 19>();
    let var_1 = vec2<i32>(-1i) * -countOneBits(vec2<i32>(min(u_input.c, global1.b), 55277i & arg_1.b));
    let var_2 = var_1.x;
    var var_3 = global2[_wgslsmith_index_u32(countOneBits((~u_input.b.x << (u_input.a % 32u)) >> (0u % 32u)), 19u)];
    return vec2<u32>(arg_0, select(42476u, abs(4294967295u), var_3.a.x));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a.yy;
    let var_1 = !var_0.x;
    var var_2 = vec2<i32>(~1i, u_input.c);
    var var_3 = _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.a, 23u)]));
    let var_4 = select(!global1.a.xw, var_0, select(!(false || all(arg_0.a.yyz)), true, global1.a.x));
    return Struct_1(global1.a, var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c))), _wgslsmith_f_op_f32(ceil(345f)), false)) - arg_0.c));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = vec2<i32>(i32(-1i) * -60087i, global1.b);
    global0 = array<f32, 23>();
    let var_1 = -_wgslsmith_mult_vec2_i32(vec2<i32>(-var_0.x, _wgslsmith_mult_i32(global1.b, global1.b) & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -21654i, u_input.c), vec3<i32>(u_input.c, 67512i, var_0.x))), ~abs(vec2<i32>(arg_0.b, -2147483647i)));
    var var_2 = max(~max(arg_0.b, u_input.c), global1.b);
    global3 = ~1u;
    return _wgslsmith_mult_i32(28171i, arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<bool>(global1.a.x, global1.a.x, false, (u_input.a ^ select(46517u, 68644u, global1.a.x)) > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x) >> (vec2<u32>(38403u, u_input.a) % vec2<u32>(32u)), func_1(u_input.b.x, global2[_wgslsmith_index_u32(20701u, 19u)]))), ~(-2147483647i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(0u, 23u)]))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1935f, -530f, false)))))));
    var var_1 = func_2(Struct_1(var_0.a, u_input.c, var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(((-var_0.b & var_1.b) >> (~1u % 32u)) ^ _wgslsmith_div_i32(func_3(global2[_wgslsmith_index_u32(u_input.a << (u_input.a % 32u), 19u)]), ~1i), _wgslsmith_div_u32(reverseBits(u_input.b.x), ~6052u));
}

