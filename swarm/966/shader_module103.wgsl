struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: f32 = -172f;

var<private> global2: array<bool, 30> = array<bool, 30>(false, true, true, false, false, true, true, false, false, false, false, false, false, true, true, false, true, true, false, false, true, true, false, true, true, true, true, false, true, true);

var<private> global3: array<vec3<i32>, 10>;

var<private> global4: vec4<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_1.a, ~(~vec3<u32>(_wgslsmith_mult_u32(25450u, u_input.b), u_input.b, ~arg_1.b.x)), arg_1.c | -1i);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1043f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-544f + 209f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1886f, 986f) - _wgslsmith_f_op_f32(abs(-1619f))))));
    var var_1 = Struct_3(~_wgslsmith_clamp_u32(reverseBits(firstTrailingBit(u_input.b)), u_input.b ^ (arg_1.b.x >> (40023u % 32u)), ~reverseBits(arg_1.a)), arg_1, _wgslsmith_f_op_f32(select(534f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(557f))), any(select(vec2<bool>(false, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, global2[_wgslsmith_index_u32(30001u, 30u)]), arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(false, global2[_wgslsmith_index_u32(363u, 30u)]), global2[_wgslsmith_index_u32(arg_1.a, 30u)]))))));
    var_0 = Struct_1(var_0.b.x, vec3<u32>(reverseBits(arg_1.a), 11063u, ~35916u), _wgslsmith_mod_i32(~(-1i) << (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 43496u, arg_1.b.x, u_input.b), vec4<u32>(25544u, 1u, var_1.a, 14866u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a, u_input.b, var_0.a, 16180u), vec4<u32>(4294967295u, u_input.b, 1u, 102659u))) % 32u), -(20939i & abs(global4.x))));
    let var_2 = Struct_3(~var_0.b.x, var_1.b, _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * _wgslsmith_div_f32(-702f, 1f))));
    return 15247u;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<i32>, arg_3: u32) -> Struct_3 {
    let var_0 = !vec2<bool>(!(_wgslsmith_f_op_f32(max(-242f, arg_0.x)) < 718f), !(!global2[_wgslsmith_index_u32(~arg_3, 30u)]));
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_u32(func_3(!var_0.x, Struct_1(20936u, vec3<u32>(42663u, 14282u, 23543u), global4.x)), u_input.b), vec3<u32>(~_wgslsmith_sub_u32(u_input.b, 48577u), 1u, u_input.b), 614i), firstTrailingBit(reverseBits(u_input.a.zz)));
    let var_2 = Struct_1(var_1.a.a, firstTrailingBit(vec3<u32>(~arg_1 & func_3(true, var_1.a), _wgslsmith_div_u32(1u, 42893u), arg_1)), -global4.x);
    global4 = vec4<i32>(_wgslsmith_add_i32(50154i, min(~(-1i), _wgslsmith_clamp_i32(1i, arg_2.x, countOneBits(-10767i)))), -2147483647i, -(~(-14609i)), -2147483647i);
    let var_3 = Struct_1(~func_3(var_0.x, Struct_1(var_2.b.x >> (37571u % 32u), ~var_2.b, 0i | arg_2.x)), max(select(vec3<u32>(arg_3, var_2.a, arg_3) & vec3<u32>(var_2.a, var_2.a, 53386u), var_2.b, var_0.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, var_2.b.x, 28404u) | vec3<u32>(arg_1, 1u, 4294967295u), var_1.a.b)) & select(vec3<u32>(~6189u, ~arg_1, 17894u), ~vec3<u32>(var_1.a.a, 4294967295u, 0u), !(!vec3<bool>(true, false, var_0.x))), select(-1i, 37458i, global2[_wgslsmith_index_u32(4294967295u, 30u)] & !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_2.b.yz, var_2.b.xx), 30u)]));
    return Struct_3(1u, Struct_1(_wgslsmith_add_u32(60597u, reverseBits(var_3.a)) >> (0u % 32u), _wgslsmith_mult_vec3_u32(~vec3<u32>(17828u, u_input.b, u_input.b) | var_1.a.b, abs(var_2.b)), 0i), _wgslsmith_f_op_f32(634f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + 416f), _wgslsmith_f_op_f32(arg_0.x - 1000f)))));
}

fn func_1() -> bool {
    let var_0 = 397f;
    var var_1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1205f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) * var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(abs(765f)), -1199f == var_0)))), 51842u, ~vec4<i32>(select(_wgslsmith_mod_i32(global4.x, 22479i), global4.x ^ u_input.a.x, u_input.b >= u_input.b), 5711i, ~global4.x, 29327i & global4.x), u_input.b);
    return !global2[_wgslsmith_index_u32(countOneBits(1u) ^ (_wgslsmith_clamp_u32(~var_1.b.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.b.b.x), vec2<u32>(1u, 8977u)), 4294967295u) ^ _wgslsmith_mod_u32(max(1u, u_input.b), u_input.b)), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1605f + 274f);
    var var_1 = firstLeadingBit(vec4<u32>(u_input.b << (~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(37718u, 1u)) % 32u), 4294967295u, 45403u, u_input.b));
    global3 = array<vec3<i32>, 10>();
    global2 = array<bool, 30>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1155f));
    var var_2 = ~var_1.ywz;
    let var_3 = !(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b, var_1.x), 30u)], func_1()));
    var_1 = vec4<u32>(min(~(~_wgslsmith_add_u32(var_2.x, var_2.x)), 18704u), var_1.x, _wgslsmith_clamp_u32(u_input.b << (_wgslsmith_mult_u32(~0u, u_input.b | 4294967295u) % 32u), ~_wgslsmith_dot_vec3_u32(var_1.yzz & var_1.wwx, var_1.wzy ^ vec3<u32>(0u, 0u, var_2.x)), 34582u), func_3(true, Struct_1(var_1.x, var_1.xzx, 44537i)));
    var_1 = ~((~(vec4<u32>(var_1.x, u_input.b, var_2.x, 0u) << (vec4<u32>(u_input.b, u_input.b, 0u, var_2.x) % vec4<u32>(32u))) << (~min(vec4<u32>(u_input.b, 20742u, var_1.x, 1u), vec4<u32>(1u, 1u, var_1.x, var_1.x)) % vec4<u32>(32u))) << (vec4<u32>(1u, (38269u << (u_input.b % 32u)) << (_wgslsmith_clamp_u32(var_1.x, 11869u, 97062u) % 32u), select(u_input.b, u_input.b, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.x, var_1.x), 30u)]), 1u) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(16823i, _wgslsmith_div_vec3_u32(firstLeadingBit(firstLeadingBit(var_1.xwy)) ^ firstLeadingBit(vec3<u32>(var_2.x, u_input.b, 1u)), var_1.wwy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f + -1381f), _wgslsmith_f_op_f32(var_0 * var_0), var_0, _wgslsmith_div_f32(-287f, 734f)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, var_0, -333f, var_0), vec4<f32>(252f, -2062f, -2533f, var_0))))))), _wgslsmith_add_vec3_u32(var_1.yxy, var_1.wxy), select(vec2<i32>(global4.x, countOneBits(21370i)), countOneBits(~max(global4.yy, u_input.a.xy)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, u_input.b) | var_1.x, 30u)]));
}

