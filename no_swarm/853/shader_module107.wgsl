struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<i32, 28>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>) -> f32 {
    global0 = arg_1;
    return _wgslsmith_f_op_f32(-272f * -1810f);
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = vec3<i32>(-_wgslsmith_sub_i32(-firstTrailingBit(global0.x), ~(~(-1i))), ~_wgslsmith_clamp_i32(-_wgslsmith_sub_i32(global0.x, 0i), abs(_wgslsmith_mod_i32(global0.x, global0.x)), 0i), 3286i);
    let var_1 = ~(~reverseBits(2990u));
    return select(vec2<bool>(!(!arg_0.b.e), any(select(select(vec3<bool>(true, arg_0.b.a, false), vec3<bool>(arg_0.b.e, false, false), arg_0.b.e), vec3<bool>(true, true, true), false))), select(select(!select(vec2<bool>(false, true), vec2<bool>(arg_0.b.a, arg_0.b.e), vec2<bool>(arg_0.b.a, true)), vec2<bool>(!arg_0.b.e, arg_0.b.a), select(vec2<bool>(true, arg_0.b.a), !vec2<bool>(arg_0.b.a, false), select(true, false, true))), vec2<bool>(arg_0.b.e, all(select(vec3<bool>(true, true, arg_0.b.e), vec3<bool>(arg_0.b.a, true, true), arg_0.b.e))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(arg_0.b.e, arg_0.b.a)), select(!vec2<bool>(arg_0.b.a, true), select(vec2<bool>(arg_0.b.a, true), vec2<bool>(arg_0.b.e, true), arg_0.b.a), vec2<bool>(arg_0.b.a, false)), arg_0.b.e)), any(select(!vec3<bool>(false, arg_0.b.e, false), select(!vec3<bool>(arg_0.b.a, true, arg_0.b.a), !vec3<bool>(arg_0.b.a, arg_0.b.e, true), select(vec3<bool>(false, arg_0.b.a, true), vec3<bool>(true, arg_0.b.a, arg_0.b.a), vec3<bool>(true, arg_0.b.e, false))), vec3<bool>(true, false, arg_0.b.a))));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_2, arg_2: u32) -> bool {
    global0 = ((~(~arg_1.c.b.yy) & vec2<i32>(-27349i, global0.x)) & ~firstLeadingBit(arg_1.c.c.ww)) & ~vec2<i32>(~(global1[_wgslsmith_index_u32(23898u, 28u)] >> (u_input.a.x % 32u)), _wgslsmith_div_i32(376i, global0.x) >> ((29388u << (arg_0.a.b.d.x % 32u)) % 32u));
    let var_0 = 11939u;
    let var_1 = arg_0.a.b.d.x;
    var var_2 = arg_0.a.b.c;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-981f, arg_1.b.x))), arg_1.c.c.wxy, (arg_0.a.b.c.c << (_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0, 8873u, 22874u, 50030u), abs(vec4<u32>(28431u, var_1, arg_2, u_input.a.x))) % vec4<u32>(32u))) << ((((vec4<u32>(1u, 4294967295u, 22343u, 1u) & vec4<u32>(var_1, var_0, 1u, var_1)) << ((vec4<u32>(arg_1.d.x, var_1, 46590u, 7681u) << (vec4<u32>(0u, arg_1.d.x, arg_0.a.b.d.x, var_1) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.a.b.d.x, 83872u, 78450u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.d.x, 55543u, 84144u, var_1), vec4<u32>(72172u, 0u, arg_1.d.x, arg_1.d.x)))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(floor(-1000f)));
    return any(!(!select(select(vec2<bool>(arg_1.a, true), vec2<bool>(true, arg_1.e), vec2<bool>(false, arg_0.a.b.e)), !vec2<bool>(arg_0.a.b.e, arg_1.a), func_3(arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(364f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), vec2<i32>(global1[_wgslsmith_index_u32(36752u, 28u)], 1i) << (vec2<u32>(9277u, u_input.a.x) % vec2<u32>(32u)))))))));
    let var_1 = -(vec4<i32>(-1i) * -(~(-vec4<i32>(-1i, 19780i, -11203i, global1[_wgslsmith_index_u32(u_input.a.x, 28u)]))));
    let var_2 = vec4<bool>(all(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), !select(vec2<bool>(true, false), vec2<bool>(true, false), false))), true, u_input.a.x < u_input.a.x, all(select(vec3<bool>(all(vec4<bool>(false, true, false, true)), any(vec2<bool>(true, false)), 4581u != u_input.a.x), vec3<bool>(func_2(Struct_5(Struct_3(1471f, Struct_2(false, vec2<f32>(530f, -1050f), Struct_1(-526f, vec3<i32>(global0.x, -44805i, -55571i), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], 31548i, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global0.x), 211f), u_input.a, true))), Struct_2(true, vec2<f32>(-329f, 414f), Struct_1(-2002f, vec3<i32>(var_1.x, -2147483647i, 27633i), vec4<i32>(-22148i, global0.x, var_1.x, global1[_wgslsmith_index_u32(4294967295u, 28u)]), -1311f), vec3<u32>(u_input.a.x, u_input.a.x, 5330u), true), 4294967295u), false, false), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
    var var_3 = Struct_2(var_2.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(920f, 817f) + vec2<f32>(-672f, -787f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1010f, -1000f) + vec2<f32>(1078f, 446f)))) * vec2<f32>(_wgslsmith_f_op_f32(abs(328f)), _wgslsmith_f_op_f32(func_1(func_3(Struct_3(-279f, Struct_2(false, vec2<f32>(229f, 1306f), Struct_1(-1688f, vec3<i32>(global0.x, -10855i, global0.x), var_1, -1101f), vec3<u32>(u_input.a.x, u_input.a.x, 14726u), false))), vec2<i32>(var_1.x, -4085i))))), Struct_1(-1055f, min(var_1.zxy, ~vec3<i32>(var_1.x, global0.x, global0.x)), vec4<i32>(50804i, select(-1i, -22793i, var_2.x) << (0u % 32u), 20619i & _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -5312i, global0.x), vec3<i32>(global0.x, global1[_wgslsmith_index_u32(24816u, 28u)], 0i)), -2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -1702f)), firstLeadingBit(u_input.a), false);
    var_3 = Struct_2(any(select(vec2<bool>(var_3.e, var_2.x), select(select(vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, var_3.a), vec2<bool>(var_3.a, var_3.a)), !var_2.ww, true), select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, false), !var_2.yy))), _wgslsmith_div_vec2_f32(var_3.b, var_3.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(var_3.b.x + var_3.b.x))), vec3<i32>(max(2147483647i, 39755i) >> (0u % 32u), countOneBits(-10157i), max(firstTrailingBit(-43435i), var_1.x >> (var_3.d.x % 32u))), var_3.c.c, var_3.c.d), var_3.d, ~(~u_input.a.x) >= u_input.a.x);
    let var_4 = var_3.c;
    global0 = -vec2<i32>(abs(i32(-1i) * -global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-524f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_3.c.d, var_3.b.x)), var_3.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_3.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a))), var_3.c.d, vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(firstLeadingBit(26263u), var_3.d.x), (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4151u), vec3<u32>(4294967295u, 21878u, 31145u)) & ~u_input.a.x) & u_input.a.x));
}

