struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: array<bool, 28>;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(true, true, true, true));

var<private> global4: Struct_5;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_5(global4.a);
    global3 = Struct_1(global4.a.a);
    global2 = array<bool, 28>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(442f, 856f, -1000f))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-169f * 482f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1324f + 1200f) + _wgslsmith_f_op_f32(select(-918f, 440f, global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(256f, -1000f)) + _wgslsmith_div_f32(-566f, 595f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(444f, -323f)), _wgslsmith_f_op_f32(abs(-1725f))))), 821f, 1f));
    var var_2 = Struct_1(select(var_0.a.a, var_0.a.a, select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 28u)], var_0.a.a.x, global4.a.a.x, var_0.a.a.x), global4.a.a, any(vec4<bool>(global3.a.x, global1.x, global1.x, var_0.a.a.x))), !global3.a, global1.x)));
    return select(global0.xy, global3.a.xx, select(select(vec2<bool>(global1.x, false), !select(global4.a.a.wx, vec2<bool>(global0.x, true), true), -51632i < u_input.b), global3.a.xx, true | all(!vec3<bool>(var_0.a.a.x, false, false))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: bool, arg_3: bool) -> i32 {
    global1 = vec3<bool>(any(global3.a), true | global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, u_input.a), ~u_input.a), 28u)], !arg_2);
    var var_0 = ~firstTrailingBit(reverseBits(_wgslsmith_mult_u32(u_input.a, 4294967295u & u_input.a)));
    var var_1 = Struct_2(global4.a, arg_1.a, global4.a, Struct_1(vec4<bool>(true, global4.a.a.x, true, !arg_1.a.a.x)));
    global2 = array<bool, 28>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1697f), _wgslsmith_f_op_f32(f32(-1f) * -426f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1f)), -1010f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1589f))));
    return -1i;
}

fn func_2() -> Struct_5 {
    global3 = Struct_1(global3.a);
    var var_0 = !all(!vec2<bool>(all(global4.a.a.ywy), !global0.x));
    let var_1 = _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(19735i << (1u % 32u), abs(u_input.c.x), ~u_input.c.x), ~1i, _wgslsmith_sub_i32(u_input.b, u_input.c.x) << ((0u >> (u_input.a % 32u)) % 32u), 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 1i, (-35751i | u_input.b) << (~0u % 32u), _wgslsmith_dot_vec3_i32(u_input.c, firstTrailingBit(vec3<i32>(u_input.b, u_input.b, u_input.c.x)))), vec4<i32>(min(-u_input.c.x, u_input.b), _wgslsmith_add_i32(u_input.c.x, _wgslsmith_div_i32(-4973i, u_input.c.x)), i32(-1i) * -1i, -(~(-2147483647i)))));
    let var_2 = -22971i <= (i32(-1i) * -func_4(func_3(), Struct_5(Struct_1(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 28u)], false, false, true))), func_3().x, true | global2[_wgslsmith_index_u32(0u, 28u)]));
    global1 = global4.a.a.wzz;
    return Struct_5(Struct_1(!vec4<bool>(any(vec2<bool>(true, var_2)), !global2[_wgslsmith_index_u32(31497u, 28u)], global2[_wgslsmith_index_u32(0u, 28u)], true)));
}

fn func_1(arg_0: i32, arg_1: f32) -> u32 {
    global4 = func_2();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -724f)));
    global0 = vec3<bool>(false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-1000f * arg_1)))) < 322f, false);
    var var_1 = _wgslsmith_f_op_f32(sign(arg_1));
    var var_2 = func_2().a;
    return ~_wgslsmith_div_u32(49766u, 4294967295u);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec3<u32>) -> Struct_5 {
    global0 = select(global3.a.zwx, func_2().a.a.wwz, vec3<bool>(all(!global0.yx) & arg_0.x, all(vec3<bool>(false, true, arg_0.x)), global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(max(arg_3, vec3<u32>(arg_2.x, 1u, 0u)), vec3<u32>(arg_2.x, 4294967295u, 0u))), 28u)]));
    global0 = global3.a.xyz;
    var var_0 = Struct_4(u_input.b, arg_1.a.wwy, true);
    let var_1 = Struct_3(-28017i != u_input.c.x, vec4<bool>(global0.x, !(global1.x || all(var_0.b)), global4.a.a.x, false), _wgslsmith_dot_vec2_i32(-(u_input.c.zz << (vec2<u32>(1u, 26049u) % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(var_0.a, u_input.b)), vec2<i32>(u_input.b, var_0.a)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1000f, -603f, false)))))))));
    return Struct_5(arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3.a.yzz;
    global4 = func_5(vec2<bool>(global2[_wgslsmith_index_u32(abs(~50803u ^ _wgslsmith_div_u32(43525u, u_input.a)), 28u)], global1.x), Struct_1(global3.a), vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(~1u, u_input.a)), select(24011u, 1u, global3.a.x), ~u_input.a, ~func_1(-1i, 1000f)), vec3<u32>(_wgslsmith_add_u32(23619u, ~u_input.a), _wgslsmith_mult_u32(u_input.a, ~u_input.a), ~(~10071u)));
    global2 = array<bool, 28>();
    var var_0 = Struct_5(Struct_1(vec4<bool>(true, true, true, !(u_input.a > u_input.a))));
    var var_1 = ~(~abs(0u) & u_input.a);
    global0 = !vec3<bool>(true, var_0.a.a.x, all(func_3()));
    global4 = Struct_5(var_0.a);
    let var_2 = vec2<u32>(reverseBits(countOneBits(4242u)), u_input.a) << (firstTrailingBit(select(vec2<u32>(u_input.a, u_input.a), max(countOneBits(vec2<u32>(59660u, 80465u)), ~vec2<u32>(0u, 66001u)), !(!global2[_wgslsmith_index_u32(21492u, 28u)]))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.c.yz), vec4<u32>(~1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), ~_wgslsmith_dot_vec2_u32(var_2, vec2<u32>(u_input.a, 0u))), _wgslsmith_mult_u32(var_2.x, reverseBits(1u)), u_input.a), -639f, -14105i, u_input.c);
}

