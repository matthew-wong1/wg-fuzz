struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

var<private> global1: Struct_4 = Struct_4(true, Struct_2(Struct_1(vec3<f32>(278f, 2419f, -286f), vec3<bool>(true, false, false), vec4<i32>(-1068i, 0i, 2147483647i, 1i), 2147483647i), -1i, false), Struct_1(vec3<f32>(-312f, -272f, -573f), vec3<bool>(false, true, false), vec4<i32>(50623i, -26142i, -1i, -1i), 2412i));

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 27>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> i32 {
    global3 = array<Struct_2, 27>();
    let var_0 = !select(!select(!vec4<bool>(global1.a, false, global1.b.c, global1.b.c), select(vec4<bool>(arg_1.b, true, arg_1.b, true), vec4<bool>(arg_1.b, global1.b.c, false, false), vec4<bool>(true, global1.c.b.x, false, global1.c.b.x)), !global1.a), vec4<bool>(_wgslsmith_f_op_f32(exp2(global1.c.a.x)) >= _wgslsmith_f_op_f32(arg_0 - 1789f), any(vec4<bool>(arg_1.b, true, arg_1.b, arg_1.c)), false, false), !(!(!vec4<bool>(true, global2.c, global2.c, arg_1.c))));
    global0 = array<Struct_2, 32>();
    global3 = array<Struct_2, 27>();
    let var_1 = vec3<u32>(12740u, 47382u, countOneBits(reverseBits(4294967295u & u_input.a.x))) ^ vec3<u32>(~u_input.a.x, ~(~(~u_input.a.x)), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(34917u, u_input.a.x, u_input.a.x, 22749u), vec4<u32>(u_input.a.x, 48308u, u_input.a.x, u_input.a.x)) | _wgslsmith_div_u32(u_input.a.x, 0u)));
    return ~global2.a.c.x & _wgslsmith_sub_i32(global2.a.d, ~(-arg_1.a.x));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<i32>) -> vec4<i32> {
    let var_0 = firstLeadingBit(vec2<i32>(func_3(global2.a.a.x, Struct_3(_wgslsmith_mod_vec4_i32(global2.a.c, global2.a.c), any(vec4<bool>(false, false, false, false)), true, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.a.a.x, global1.b.a.a.x, 1129f, -181f), vec4<f32>(global2.a.a.x, -432f, 1433f, global2.a.a.x))))), ~global1.b.a.c.x));
    return global2.a.c;
}

fn func_4(arg_0: Struct_3) -> i32 {
    let var_0 = Struct_4(any(select(vec3<bool>(global1.a, any(vec2<bool>(global2.a.b.x, true)), true), select(vec3<bool>(false, arg_0.c, arg_0.b), select(vec3<bool>(true, global1.b.a.b.x, global2.c), global2.a.b, true), global2.a.b), select(!global2.a.b, select(global2.a.b, vec3<bool>(global1.b.c, arg_0.b, false), global2.a.b), global2.a.b))), Struct_2(Struct_1(global2.a.a, !vec3<bool>(false, true, global2.a.b.x), vec4<i32>(~global1.c.c.x, -12417i, arg_0.a.x ^ arg_0.a.x, ~global1.b.a.d), arg_0.a.x), abs(0i), true), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(237f, global2.a.a.x)), global2.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.a.a.x - arg_0.d.x))), global1.c.b, max(-arg_0.a, ~firstTrailingBit(vec4<i32>(-7979i, 110228i, 12673i, global1.c.c.x))), 10061i));
    global1 = var_0;
    var var_1 = 79697u;
    var var_2 = abs(_wgslsmith_sub_vec4_u32(select(~vec4<u32>(9135u, u_input.a.x, 0u, 4294967295u), u_input.a, !(false | global2.c)), vec4<u32>(~abs(8224u), max(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~2619u), min(u_input.a.x, 0u) >> (select(u_input.a.x, 4294967295u, false) % 32u), 1u)));
    let var_3 = var_0.c;
    return _wgslsmith_div_i32(~_wgslsmith_div_i32(2147483647i, min(arg_0.a.x, 1i)), func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.a.a.x))), arg_0));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> bool {
    let var_0 = !(!vec3<bool>(false, any(global1.c.b), abs(97838u) >= u_input.a.x));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.c.a.x)) * _wgslsmith_div_f32(320f, _wgslsmith_f_op_f32(-global2.a.a.x))), _wgslsmith_f_op_f32(global1.c.a.x + global2.a.a.x), global1.c.a.x, global2.a.a.x);
    let var_2 = Struct_3(vec4<i32>(~select(52300i, global2.b, false) >> (~20908u % 32u), func_4(Struct_3(func_2(global2.a.b.x, u_input.a.wx, vec2<i32>(global2.b, global1.b.a.d)), any(vec2<bool>(false, global1.a)), true, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.c.a.x, global1.c.a.x, -1178f, -314f))))), -2147483647i, ~(-global2.b)), !(any(vec3<bool>(true, global1.c.b.x, false)) & any(vec4<bool>(true, false, true, false))), all(var_0), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.a.a.x)), 1370f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global2.a.a.x))))))));
    global3 = array<Struct_2, 27>();
    global1 = Struct_4(!(!any(!global2.a.b)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~u_input.a.x), _wgslsmith_dot_vec2_u32(max(_wgslsmith_mod_vec2_u32(u_input.a.zx, u_input.a.yw), vec2<u32>(u_input.a.x, 4294967295u)), firstTrailingBit(u_input.a.ww))), 27u)], global2.a);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 27>();
    let var_0 = global1.b.a.a.x;
    let var_1 = func_1(vec2<bool>(any(select(!global1.c.b.zy, global1.c.b.yx, vec2<bool>(true, global1.a))), !global1.b.c), false);
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec4<u32>(u_input.a.x, 105347u, 4294967295u, 1u) << (vec4<u32>(4543u, u_input.a.x, u_input.a.x, ~54501u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~u_input.a, _wgslsmith_clamp_vec4_u32(u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(1u, 49679u, u_input.a.x, 22333u), u_input.a), vec4<u32>(19083u, 4294967295u, u_input.a.x, 40491u))), any(!select(vec4<bool>(var_1, var_1, false, false), vec4<bool>(true, global2.a.b.x, global1.c.b.x, global1.b.a.b.x), vec4<bool>(global2.a.b.x, true, global2.a.b.x, global2.a.b.x)))), (~(u_input.a.x & 11594u) >> (reverseBits(~u_input.a.x) % 32u)) << (~5355u % 32u), -1i, -1000f, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, 1u), u_input.a.x, u_input.a.x >> (u_input.a.x % 32u)), ~vec3<u32>(70857u, 27240u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))));
}

