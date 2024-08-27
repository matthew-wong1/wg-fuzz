struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15>;

var<private> global1: vec3<u32> = vec3<u32>(0u, 64430u, 0u);

var<private> global2: Struct_5 = Struct_5(Struct_2(-10655i), Struct_1(vec2<bool>(true, false), vec4<bool>(false, true, false, false), vec2<bool>(false, false), vec3<f32>(342f, 678f, -124f)));

var<private> global3: array<vec2<bool>, 5>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    return reverseBits(~global1.x);
}

fn func_2() -> Struct_5 {
    var var_0 = firstLeadingBit(abs(select(~(~vec4<u32>(0u, 26272u, global1.x, 4294967295u)), vec4<u32>(60909u, _wgslsmith_mult_u32(global1.x, global1.x), abs(global1.x), select(41790u, 0u, global2.b.a.x)), global2.b.a.x)));
    var var_1 = vec2<u32>(global1.x, countOneBits(_wgslsmith_dot_vec2_u32(var_0.xy, ~(~vec2<u32>(global1.x, 33430u)))));
    let var_2 = false;
    var var_3 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(1u), max(~var_1.x, func_3(Struct_3(global2.a, global2.b, global2.a))), global1.x), vec3<u32>(var_0.x, var_0.x, select(global1.x, 14910u, false) ^ var_0.x)));
    var_3 = _wgslsmith_mod_u32(~21534u, var_1.x);
    return Struct_5(Struct_2(global2.a.a), global2.b);
}

fn func_1() -> Struct_4 {
    global2 = func_2();
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(0i, global2.a.a, 0i)) | (~vec3<i32>(2147483647i, 2147483647i, 1i) & (vec3<i32>(4916i, 1i, global2.a.a) << (vec3<u32>(0u, 27540u, global1.x) % vec3<u32>(32u)))), countOneBits(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-30620i, -1i, global2.a.a), vec3<i32>(global2.a.a, -1i, u_input.a), vec3<i32>(global2.a.a, u_input.a, 5395i)), vec3<i32>(2329i, 11355i, 34768i) | vec3<i32>(u_input.a, 42398i, 21502i)))), vec3<i32>((2147483647i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, global2.a.a), vec4<i32>(global2.a.a, 0i, global2.a.a, u_input.a))) ^ u_input.a, -u_input.a, (-17691i << (~global1.x % 32u)) | (8906i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 1u, 79281u, 41121u), vec4<u32>(global1.x, 4294967295u, 0u, global1.x)) % 32u))));
    global2 = Struct_5(func_2().a, Struct_1(func_2().b.b.xw, global2.b.b, global3[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(1u, 70434u)), 5u)], vec3<f32>(-1576f, _wgslsmith_f_op_f32(sign(-341f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global2.b.d.x)))))));
    let var_1 = func_2().b;
    var var_2 = Struct_5(func_2().a, var_1);
    return Struct_4(4294967295u, Struct_2(29540i));
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> vec3<u32> {
    global2 = Struct_5(Struct_2(global2.a.a), global2.b);
    let var_0 = vec4<i32>(-_wgslsmith_div_i32(abs(-1i), max(1i, -2147483647i)) >> (_wgslsmith_sub_u32(max(59178u, arg_0.a) ^ _wgslsmith_sub_u32(arg_0.a, arg_0.a), arg_0.a) % 32u), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a, -1i), arg_0.b.a, arg_0.b.a), global2.a.a, global2.a.a);
    global2 = Struct_5(arg_0.b, global2.b);
    var var_1 = global2.b.b.wzx;
    global2 = Struct_5(func_1().b, func_2().b);
    return vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, _wgslsmith_mod_u32(global1.x, 1u), arg_0.a), _wgslsmith_mult_vec3_u32(select(vec3<u32>(global1.x, arg_0.a, 1u), vec3<u32>(global1.x, arg_0.a, 38760u), global2.b.b.xzw) & ~vec3<u32>(31532u, 1u, global1.x), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a, arg_0.a, 22419u) ^ vec3<u32>(50050u, arg_0.a, 4294967295u), abs(vec3<u32>(0u, arg_0.a, 1u))))), _wgslsmith_add_u32(global1.x, _wgslsmith_mod_u32(~global1.x, 0u)), arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<u32>(~(~(~1u)), select(global1.x, ~0u, false), 11137u) | _wgslsmith_sub_vec3_u32(func_4(func_1(), true), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 0u, 853u), vec3<u32>(5669u, 4294967295u, global1.x)), 18289u, global1.x) | _wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), ~vec3<u32>(78329u, 435u, global1.x)));
    let var_0 = Struct_1(select(select(global2.b.a, !(!global3[_wgslsmith_index_u32(global1.x, 5u)]), !(!vec2<bool>(true, global2.b.c.x))), global3[_wgslsmith_index_u32(global1.x, 5u)], false), select(global2.b.b, vec4<bool>(global2.b.c.x, !func_2().b.b.x, !(!global2.b.b.x), global1.x != ~global1.x), global2.b.b), !func_2().b.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - global2.b.d.x) + -240f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(618f, global2.b.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1042f) * _wgslsmith_f_op_f32(global2.b.d.x * -1000f)) * _wgslsmith_f_op_f32(round(func_2().b.d.x))), _wgslsmith_f_op_f32(max(-403f, 190f))));
    var var_1 = Struct_3(func_1().b, var_0, func_2().a);
    global2 = Struct_5(func_1().b, Struct_1(select(!(!var_1.b.a), var_1.b.c, global2.b.b.x), select(func_2().b.b, vec4<bool>(true, true, !var_1.b.b.x, global2.b.b.x), func_2().a.a > 1i), !select(var_0.c, !var_0.b.ww, select(var_1.b.c, vec2<bool>(var_0.a.x, global2.b.c.x), var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(878f, var_1.b.d.x, 1067f))), var_1.b.d))));
    let var_2 = !(!var_1.b.a);
    let x = u_input.a;
    s_output = StorageBuffer((global1.x & select(abs(12547u), 0u ^ global1.x, var_1.b.d.x < 1000f)) ^ 0u);
}

