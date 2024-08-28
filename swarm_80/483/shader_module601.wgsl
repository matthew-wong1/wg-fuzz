struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_3, 17>;

var<private> global2: Struct_3 = Struct_3(vec4<f32>(-373f, -1000f, 429f, -355f), vec3<u32>(5920u, 38821u, 1u));

var<private> global3: vec4<i32> = vec4<i32>(-1i, 23949i, -26951i, 35107i);

var<private> global4: Struct_3 = Struct_3(vec4<f32>(-1390f, 1024f, 618f, -158f), vec3<u32>(10124u, 1u, 28964u));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    global1 = array<Struct_3, 17>();
    global0 = !(!vec2<bool>(true, select(global0.x, all(vec2<bool>(global0.x, false)), all(vec4<bool>(true, true, false, false)))));
    var var_0 = global4.a.xwx;
    var var_1 = ~vec4<i32>(min(u_input.a.x, 2147483647i), _wgslsmith_sub_i32(52172i, 40332i), min(global3.x, 1i), ~1i << ((~global4.b.x | _wgslsmith_mod_u32(4294967295u, global2.b.x)) % 32u));
    let var_2 = firstLeadingBit(global2.b);
    return -2873f;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(_wgslsmith_f_op_f32(global4.a.x - global4.a.x), 841f))) * _wgslsmith_f_op_f32(-233f * _wgslsmith_div_f32(376f, global4.a.x))));
    var var_1 = vec4<bool>(global0.x, !global0.x, true, any(vec4<bool>(select(false, global0.x, true) && true, _wgslsmith_f_op_f32(floor(916f)) <= _wgslsmith_f_op_f32(-global4.a.x), true, global0.x || (true && global0.x))));
    let var_2 = vec3<u32>(82805u, 76383u, global4.b.x ^ max(4294967295u, ~global2.b.x & ~var_0.a));
    var var_3 = global1[_wgslsmith_index_u32(global2.b.x, 17u)];
    let var_4 = var_0;
    return Struct_1(select(10681u, 30363u, !any(!var_1.yzw)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(ceil(global4.a.zz))))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> vec4<f32> {
    global0 = select(vec2<bool>(!global0.x, all(vec2<bool>(global0.x, global0.x))), vec2<bool>(global0.x & !global0.x, !(global3.x <= -1i)), true);
    var var_0 = !select(!select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x)), select(select(!vec2<bool>(global0.x, global0.x), select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), global0.x), select(vec2<bool>(global0.x, false), vec2<bool>(false, true), vec2<bool>(global0.x, false))), select(select(vec2<bool>(false, true), vec2<bool>(true, global0.x), vec2<bool>(true, true)), select(vec2<bool>(global0.x, true), vec2<bool>(true, true), true), !vec2<bool>(global0.x, global0.x)), global0.x), !all(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x), false)));
    var var_1 = Struct_2(Struct_1(abs(global4.b.x ^ _wgslsmith_mod_u32(4294967295u, arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) - 592f)), ~vec4<i32>(_wgslsmith_mult_i32(u_input.c.x, i32(-1i) * -1i), u_input.a.x, ~(-global3.x), -1i), -27674i, arg_0, 1u);
    var_0 = vec2<bool>(false, all(vec4<bool>(global0.x, true, arg_1.a.x > global4.a.x, true)) && var_0.x);
    let var_2 = _wgslsmith_f_op_f32(min(arg_1.a.x, arg_2.a.x));
    return arg_1.a;
}

fn func_1() -> vec4<i32> {
    global2 = Struct_3(_wgslsmith_f_op_vec4_f32(func_4(func_2(), global1[_wgslsmith_index_u32(1u, 17u)], Struct_3(_wgslsmith_f_op_vec4_f32(global4.a + _wgslsmith_f_op_vec4_f32(-global2.a)), global2.b))), global4.b);
    var var_0 = Struct_1(~(55696u ^ _wgslsmith_mod_u32(global4.b.x >> (global2.b.x % 32u), 35565u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(), Struct_3(global2.a, ~vec3<u32>(global4.b.x, global2.b.x, global4.b.x)), global1[_wgslsmith_index_u32(global4.b.x | 52950u, 17u)])).x - global4.a.x));
    global1 = array<Struct_3, 17>();
    var var_1 = all(select(!(!select(vec3<bool>(false, global0.x, true), vec3<bool>(true, true, false), vec3<bool>(true, global0.x, true))), select(select(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(global0.x, true, global0.x), global0.x), true), select(vec3<bool>(true, true, true), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, true, global0.x), true), !global0.x), -420f > var_0.b), false));
    global0 = vec2<bool>(all(vec2<bool>(all(select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(true, global0.x, global0.x, global0.x), global0.x)), false)), all(!select(select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(false, false, false, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), vec4<bool>(global0.x, global0.x, global0.x, global0.x), all(vec4<bool>(global0.x, global0.x, true, global0.x)))));
    return vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~0i, 1i, u_input.b), countOneBits(min(vec3<i32>(-1i, -1i, global3.x), global3.zxy))), 2147483647i, u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(abs(2147483647i), ~u_input.c.x), min(-40953i >> (global4.b.x % 32u), 0i))) << (vec4<u32>(_wgslsmith_dot_vec3_u32(~global4.b ^ vec3<u32>(10877u, 1u, global4.b.x), global4.b), ~global4.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global2.b.x, 4294967295u), _wgslsmith_dot_vec3_u32(global4.b, global4.b), global4.b.x, 1u), firstLeadingBit(firstTrailingBit(vec4<u32>(var_0.a, 1u, 13934u, global4.b.x)))), ~4294967295u) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -abs(_wgslsmith_clamp_vec4_i32(func_1(), countOneBits(vec4<i32>(u_input.b, global3.x, u_input.c.x, global3.x)), vec4<i32>(1i, 1i, 1i, 1i)) ^ select(vec4<i32>(38450i, global3.x, u_input.b, 14613i) | vec4<i32>(u_input.a.x, -1i, 15159i, -19000i), vec4<i32>(global3.x, 0i, global3.x, 17607i) ^ vec4<i32>(global3.x, global3.x, 39922i, -28992i), !vec4<bool>(global0.x, global0.x, global0.x, false)));
    global1 = array<Struct_3, 17>();
    var var_0 = select(!select(vec3<bool>(true, global0.x, true), vec3<bool>(global0.x || global0.x, select(true, true, global0.x), true), global0.x), !vec3<bool>(global0.x, any(!vec3<bool>(global0.x, true, global0.x)), true), vec3<bool>(true, global0.x, global0.x));
    global1 = array<Struct_3, 17>();
    var var_1 = 1u;
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(reverseBits(u_input.a.x)), _wgslsmith_add_vec2_i32(-vec2<i32>(1i, 0i), global3.yz), ~select((u_input.a.x << (4294967295u % 32u)) << (_wgslsmith_div_u32(0u, 22691u) % 32u), _wgslsmith_div_i32(0i, 2147483647i ^ u_input.c.x), all(!vec4<bool>(var_0.x, true, true, global0.x))), u_input.c & _wgslsmith_sub_vec2_i32(vec2<i32>(-u_input.b, reverseBits(-1i)), u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global2.a.zy))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(0u, global2.a.x), Struct_3(global2.a, global2.b), global1[_wgslsmith_index_u32(global2.b.x, 17u)])).wy))));
}

