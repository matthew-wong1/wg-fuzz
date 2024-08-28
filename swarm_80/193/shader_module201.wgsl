struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: bool,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_4;

var<private> global2: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(10102u, 12862u), vec2<u32>(59922u, 32886u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 21187u), vec2<u32>(80517u, 37439u), vec2<u32>(0u, 4294967295u), vec2<u32>(35484u, 0u), vec2<u32>(120145u, 4294967295u), vec2<u32>(1u, 59537u), vec2<u32>(39620u, 0u), vec2<u32>(8800u, 4294967295u), vec2<u32>(20005u, 4294967295u), vec2<u32>(4294967295u, 603u), vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(85538u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(41709u, 51613u), vec2<u32>(30396u, 23463u), vec2<u32>(66848u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 9451u), vec2<u32>(37187u, 96874u), vec2<u32>(0u, 55043u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u), vec2<u32>(0u, 44903u), vec2<u32>(30997u, 48501u), vec2<u32>(20475u, 4294967295u));

var<private> global3: Struct_1;

var<private> global4: vec4<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = Struct_2(vec4<u32>(1u, u_input.b, 1u, ~arg_2) | firstTrailingBit(min(vec4<u32>(arg_3, arg_2, 4294967295u, 35498u), ~vec4<u32>(47736u, arg_3, arg_3, 3404u))), global1.c, min(vec2<u32>(arg_3, _wgslsmith_mult_u32(0u, arg_2)), ~firstTrailingBit(global2[_wgslsmith_index_u32(~arg_3, 32u)])));
    var var_1 = global1.a.c;
    global0 = var_0.a.x;
    let var_2 = Struct_4(Struct_3(any(!global1.a.c.c), countOneBits(_wgslsmith_sub_u32(var_0.c.x, 28914u)), arg_1, false, countOneBits(global1.a.e)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -986f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-260f, _wgslsmith_f_op_f32(f32(-1f) * -1350f)) * _wgslsmith_div_f32(var_0.b.x, global4.x)))), var_0.b, false);
    var var_3 = _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec3_u32(~var_0.a.zzx, _wgslsmith_clamp_vec3_u32(firstLeadingBit(~vec3<u32>(0u, arg_3, 49873u)), ~var_0.a.wyw, vec3<u32>(arg_3, 1u, arg_2) << (_wgslsmith_div_vec3_u32(vec3<u32>(25933u, var_0.a.x, arg_3), vec3<u32>(0u, u_input.b, 4149u)) % vec3<u32>(32u)))));
    return 0u;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: f32) -> u32 {
    let var_0 = any(vec3<bool>(!any(global3.c) != global1.a.a, global1.a.d | any(vec3<bool>(global1.d, false, global1.a.d)), all(global1.a.c.d.xy) | any(vec3<bool>(false, global1.d, global3.d.x))));
    global3 = global1.a.c;
    global2 = array<vec2<u32>, 32>();
    let var_1 = select(global3.b, countOneBits(-1i), true);
    global1 = Struct_4(global1.a, _wgslsmith_f_op_f32(floor(-949f)), _wgslsmith_f_op_vec2_f32(-global4.xx), (false || (~global3.b >= (-3763i & global1.a.c.b))) && (global1.d & true));
    return 0u;
}

fn func_1(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: u32) -> Struct_4 {
    var var_0 = all(select(vec2<bool>(global3.a, false & !arg_1.x), global3.d.xy, vec2<bool>(global1.d, true)));
    let var_1 = select(vec4<u32>(arg_2, 1u, reverseBits(max(45507u, 5953u)), 46318u), vec4<u32>(_wgslsmith_sub_u32(arg_2, arg_0.b >> (func_2(vec3<i32>(1i, -88963i, -95149i), global1.a.c, 1344u, 1u) % 32u)), ~global1.a.b ^ ((u_input.b | 60118u) ^ min(10365u, u_input.b)), reverseBits(~1u & _wgslsmith_div_u32(4294967295u, global1.a.b)), func_3(arg_0.b ^ global1.a.b, ~u_input.b, _wgslsmith_f_op_f32(global1.b - -1000f)) >> (_wgslsmith_sub_u32(~arg_0.b, abs(arg_2)) % 32u)), true);
    var var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(abs(0i | global3.b), arg_0.c), global1.a.e);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, global1.b, global1.b, -1383f)) - vec4<f32>(-744f, global4.x, global1.b, 104f)))));
    let var_4 = _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(1u) | arg_2, 0u ^ _wgslsmith_clamp_u32(arg_0.b, 38564u, 20872u >> (global1.a.b % 32u))), 32u)], abs(vec2<u32>(1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, var_1.x), ~0u))));
    return Struct_4(Struct_3(all(vec3<bool>(arg_1.x, false, true)) & arg_1.x, ~((var_1.x >> (1u % 32u)) & _wgslsmith_mod_u32(41075u, var_1.x)), global1.a.c, global1.a.c.e, vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(global3.b), _wgslsmith_sub_i32(global3.b, 46645i)), global3.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.x, global4.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2464f)) * _wgslsmith_f_op_f32(f32(-1f) * -664f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.c.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global4.wy, _wgslsmith_f_op_vec2_f32(global1.c - global4.zw))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, -958f) + vec2<f32>(-1165f, 641f)), vec2<f32>(1171f, 1282f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(min(global4.x, -781f))) + var_3.yw)), !arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(Struct_5(14450u, 33629u | (abs(73631u) | _wgslsmith_add_u32(u_input.b, 46727u)), -1i), !(!(!(!vec4<bool>(true, true, global3.e, global3.c.x)))), 36498u);
    global0 = 8692u;
    global2 = array<vec2<u32>, 32>();
    global4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global4.x)), -1153f, global1.b, _wgslsmith_f_op_f32(f32(-1f) * -791f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-800f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(632f * 2545f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1106f) + _wgslsmith_f_op_f32(global1.b - global4.x)), -1000f)));
    global0 = 1u;
    var var_0 = _wgslsmith_f_op_f32(step(1107f, _wgslsmith_f_op_f32(-1930f - _wgslsmith_f_op_f32(-global1.c.x))));
    var var_1 = u_input.c;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b))));
    global4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.b, -950f, global1.c.x, global1.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.c.x, global1.b, global1.c.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-334f, -583f, -511f, global4.x), vec4<f32>(global1.c.x, global4.x, 1000f, 405f), vec4<bool>(global3.e, global3.e, true, global3.c.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~1u), firstLeadingBit(~vec3<i32>(global3.b << (35261u % 32u), -68525i, u_input.a)), -2147483647i);
}

