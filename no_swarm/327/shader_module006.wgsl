struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec4<i32>(0i, i32(-2147483648), -1i, 0i)), Struct_2(vec4<i32>(-1i, i32(-2147483648), 22222i, i32(-2147483648))), Struct_2(vec4<i32>(-1132i, 2369i, -56921i, -1i)), Struct_2(vec4<i32>(1i, 29484i, 2147483647i, 11642i)), Struct_2(vec4<i32>(1i, -24827i, 0i, 1i)), Struct_2(vec4<i32>(1i, 0i, -30335i, -1i)), Struct_2(vec4<i32>(0i, -28637i, -27480i, 17355i)), Struct_2(vec4<i32>(9606i, i32(-2147483648), 1i, -62969i)), Struct_2(vec4<i32>(-20042i, -1i, 9068i, 53530i)), Struct_2(vec4<i32>(2147483647i, 1i, -35467i, -2700i)), Struct_2(vec4<i32>(0i, -26685i, 3824i, 0i)), Struct_2(vec4<i32>(94870i, -1i, -1i, -1963i)), Struct_2(vec4<i32>(-9600i, 1837i, -57284i, 8806i)), Struct_2(vec4<i32>(-26172i, 1i, 28995i, i32(-2147483648))), Struct_2(vec4<i32>(13410i, 1i, i32(-2147483648), -22671i)), Struct_2(vec4<i32>(22868i, 2147483647i, 12494i, -47739i)), Struct_2(vec4<i32>(1i, 8269i, -38183i, 15854i)), Struct_2(vec4<i32>(12372i, -25795i, 81648i, 22252i)), Struct_2(vec4<i32>(-24890i, -11042i, 33694i, 2147483647i)), Struct_2(vec4<i32>(13109i, 1i, 0i, i32(-2147483648))), Struct_2(vec4<i32>(100614i, 0i, -12480i, -1i)), Struct_2(vec4<i32>(12871i, 37000i, 36126i, -52940i)), Struct_2(vec4<i32>(4822i, i32(-2147483648), i32(-2147483648), -65526i)), Struct_2(vec4<i32>(26483i, -26846i, -53691i, 11652i)), Struct_2(vec4<i32>(92586i, i32(-2147483648), 19459i, 0i)));

var<private> global1: f32;

var<private> global2: vec2<i32>;

var<private> global3: Struct_4;

var<private> global4: array<Struct_4, 14>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec3<f32>) -> i32 {
    global4 = array<Struct_4, 14>();
    var var_0 = Struct_4(vec2<u32>(44586u, _wgslsmith_dot_vec2_u32(~global3.a, global3.a) | global3.a.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), -1894f))));
    let var_2 = !(!(!(!(295f == arg_3.x))));
    let var_3 = Struct_3(global0[_wgslsmith_index_u32(countOneBits(4294967295u), 25u)], Struct_2(vec4<i32>(~1i, max(_wgslsmith_clamp_i32(arg_1.a.x, global2.x, arg_1.a.x), _wgslsmith_mod_i32(-15393i, arg_1.a.x)), 26693i, ~global2.x)));
    return _wgslsmith_mod_i32(reverseBits(-1i) << (u_input.a.x % 32u), global2.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec3<f32>) -> i32 {
    var var_0 = ~vec2<i32>(global2.x, global2.x);
    var var_1 = Struct_3(Struct_2(((vec4<i32>(2147483647i, 2147483647i, global2.x, global2.x) & vec4<i32>(2147483647i, 12660i, global2.x, 39781i)) | ~vec4<i32>(global2.x, var_0.x, -1i, -3606i)) << (_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 4294967295u, 12734u), u_input.a), u_input.a) % vec4<u32>(32u))), Struct_2(vec4<i32>(global2.x | -1i, 61208i, func_3(Struct_4(vec2<u32>(arg_1.x, global3.a.x)), Struct_1(vec4<i32>(var_0.x, var_0.x, var_0.x, -7121i), arg_2.x), u_input.a, vec3<f32>(-194f, arg_2.x, 272f)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 0i), vec2<i32>(-2147483647i, global2.x)), ~(-1i)))));
    var_0 = var_1.a.a.zz;
    var var_2 = _wgslsmith_mult_u32(arg_1.x, global3.a.x) << (reverseBits(_wgslsmith_mod_u32(global3.a.x, global3.a.x)) % 32u);
    var var_3 = ~0i;
    return 1i;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_4) -> f32 {
    var var_0 = arg_3;
    let var_1 = 2013f;
    let var_2 = _wgslsmith_mod_vec4_i32(select(~vec4<i32>(firstLeadingBit(2147483647i), ~arg_1, global2.x, arg_2.a.x), ~(-vec4<i32>(arg_1, 2147483647i, 9298i, global2.x)), true), vec4<i32>(firstTrailingBit(global2.x), select(30699i, func_2(arg_0.ywx, vec2<u32>(59946u, 0u) << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(978f, 1557f, 836f)))), false), 43346i, ~arg_2.a.x));
    var_0 = arg_3;
    global3 = global4[_wgslsmith_index_u32(0u, 14u)];
    return 474f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 382f;
    global3 = Struct_4(~(select(vec2<u32>(u_input.b, global3.a.x) | vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.b, u_input.a.x) << (vec2<u32>(1u, u_input.b) % vec2<u32>(32u)), true) | _wgslsmith_clamp_vec2_u32(u_input.a.xw, global3.a, global3.a)));
    var var_0 = global0[_wgslsmith_index_u32(abs(global3.a.x), 25u)];
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~4294967295u, _wgslsmith_sub_u32(global3.a.x, 29207u)), 25u)];
    let var_2 = -583f;
    global0 = array<Struct_2, 25>();
    var var_3 = 9360i;
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true), _wgslsmith_div_i32(-2147483647i, -12742i), global0[_wgslsmith_index_u32(~u_input.b, 25u)], Struct_4(global3.a))), -443f))));
    let x = u_input.a;
    s_output = StorageBuffer(5017i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-632f, var_2, -900f, 1000f)))), vec4<i32>(max(_wgslsmith_dot_vec2_i32(var_0.a.yx & var_1.a.xy, -vec2<i32>(0i, 1i)), var_0.a.x << (30704u % 32u)), var_0.a.x, -2147483647i, -(~1i) | ~var_0.a.x), vec3<i32>(min(_wgslsmith_clamp_i32(select(6678i, 0i, true), 15803i, 1i), 38625i), var_1.a.x, 30992i));
}

