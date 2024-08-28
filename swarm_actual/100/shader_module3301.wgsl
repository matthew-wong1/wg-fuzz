struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<u32, 16>;

var<private> global2: array<bool, 2> = array<bool, 2>(false, true);

var<private> global3: Struct_2 = Struct_2(vec4<f32>(-1039f, -1083f, 487f, -1430f), vec2<i32>(-1i, 43806i), vec4<u32>(102895u, 8456u, 4294967295u, 62610u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~reverseBits(_wgslsmith_mult_vec4_u32(global3.c, vec4<u32>(global0.x, 19400u, arg_0.x, 4294967295u))), vec4<u32>(4294967295u, global3.c.x ^ 0u, ~1u, _wgslsmith_mult_u32(arg_0.x, _wgslsmith_mult_u32(1u, 4294967295u)))), _wgslsmith_sub_vec4_u32(reverseBits(~min(global3.c, global3.c)), vec4<u32>(global3.c.x, _wgslsmith_div_u32(6990u, global1[_wgslsmith_index_u32(~4294967295u, 16u)]), ~(~0u), select(arg_0.x, 19391u, true))));
    var var_1 = global2[_wgslsmith_index_u32(~var_0.x, 2u)];
    var_1 = global2[_wgslsmith_index_u32(~(~global3.c.x) << (~global3.c.x % 32u), 2u)];
    var var_2 = Struct_3(42792u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) - _wgslsmith_div_f32(global3.a.x, 1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x + global3.a.x) * global3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global3.a.x, 1112f)), -343f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-434f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global3.a.x, 952f, true)), _wgslsmith_f_op_f32(-global3.a.x))))), _wgslsmith_mod_i32(firstLeadingBit(2147483647i), global3.b.x ^ _wgslsmith_add_i32(firstLeadingBit(7781i), u_input.a.x | global3.b.x)), arg_0.x);
    var var_3 = true;
    return any(select(select(!(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 2u)], true)), !(!vec2<bool>(false, global2[_wgslsmith_index_u32(37783u, 2u)])), false), select(vec2<bool>(true, false), !vec2<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 2u)]), vec2<bool>(true, true)), vec2<bool>(global2[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(4294967295u)), 2u)], global2[_wgslsmith_index_u32(~(~var_0.x), 2u)])));
}

fn func_2() -> Struct_5 {
    global2 = array<bool, 2>();
    global1 = array<u32, 16>();
    global0 = ~vec3<u32>(27744u, ~(~firstTrailingBit(global3.c.x)), _wgslsmith_mod_u32(global3.c.x, 0u));
    global2 = array<bool, 2>();
    let var_0 = Struct_1(select(select(vec2<bool>(true, !global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 16u)], 2u)]), !vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.c.x, 16u)], 2u)], true), select(vec2<bool>(true, false), !vec2<bool>(global2[_wgslsmith_index_u32(99991u, 2u)], true), func_3(global3.c.xy))), select(!(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5892u, 16u)], 2u)])), select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 2u)], false), vec2<bool>(global2[_wgslsmith_index_u32(0u, 2u)], false), global3.a.x != -734f), !all(vec2<bool>(global2[_wgslsmith_index_u32(100504u, 2u)], true))), any(vec4<bool>(!global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(~4294967295u, 2u)], !global2[_wgslsmith_index_u32(global3.c.x, 2u)], func_3(vec2<u32>(14383u, 4294967295u))))), global0.x, true, !select(!(!vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], false)), !vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 2u)], global2[_wgslsmith_index_u32(global3.c.x, 2u)], global2[_wgslsmith_index_u32(global0.x, 2u)]), select(vec3<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.c.x, 16u)], 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)]), !vec3<bool>(true, false, global2[_wgslsmith_index_u32(23831u, 2u)]), true || global2[_wgslsmith_index_u32(global3.c.x, 2u)])));
    return Struct_5(Struct_2(global3.a, u_input.a.ww, ~vec4<u32>(global3.c.x, _wgslsmith_mod_u32(0u, 14401u), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(1u, 16u)], 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(46919u, 1u), global0.zz))), -_wgslsmith_mult_i32(u_input.a.x, ~_wgslsmith_dot_vec2_i32(u_input.a.wx, vec2<i32>(-4633i, u_input.a.x))), false);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x - global3.a.x) + -472f))), global3.a.x)), -1000f);
    global3 = var_0.a;
    var var_2 = func_2().a;
    global1 = array<u32, 16>();
    return var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_mult_vec3_i32(min(u_input.a.www, u_input.a.yyw), vec3<i32>(1i, ~global3.b.x, arg_3));
    let var_1 = arg_2;
    var var_2 = Struct_3(~4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3.a.x), arg_0.a.x, _wgslsmith_div_f32(1163f, arg_0.a.x), 803f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 711f, 106f, -1537f))))), 291i << (global1[_wgslsmith_index_u32((abs(36329u) >> (global3.c.x % 32u)) >> (func_2().a.c.x % 32u), 16u)] % 32u), countOneBits(~(global3.c.x >> (arg_1.c.x % 32u))) << (1u % 32u));
    let var_3 = 1u;
    let var_4 = ~vec4<u32>(reverseBits(~_wgslsmith_mod_u32(1u, 8605u)), 1u >> (_wgslsmith_add_u32(countOneBits(arg_0.c.x), ~var_2.a) % 32u), countOneBits(min(arg_0.c.x, 25126u)), global1[_wgslsmith_index_u32(4294967295u, 16u)]);
    return ~(~1u);
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: u32) -> vec4<f32> {
    return vec4<f32>(-1059f, _wgslsmith_f_op_f32(step(global3.a.x, _wgslsmith_f_op_f32(-188f * _wgslsmith_f_op_f32(f32(-1f) * -2183f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.a.x))))), 1209f);
}

fn func_6(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_3) -> Struct_5 {
    var var_0 = !select(select(vec4<bool>(all(vec2<bool>(false, true)), !global2[_wgslsmith_index_u32(1u, 2u)], func_2().c, all(vec4<bool>(false, global2[_wgslsmith_index_u32(90817u, 2u)], global2[_wgslsmith_index_u32(49765u, 2u)], false))), vec4<bool>(any(vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 2u)])), true, arg_0.x < 1196f, true), false), vec4<bool>(true, true, false, ~50133u != ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17162u, 16u)], 16u)]), true);
    let var_1 = 1u;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global3.a)));
    let var_3 = Struct_2(var_2, u_input.a.wy, ~vec4<u32>(0u, firstLeadingBit(~arg_2.a), 0u, ~func_4(Struct_2(var_2, vec2<i32>(arg_1, global3.b.x), vec4<u32>(global3.c.x, 1u, var_1, 1u)), Struct_2(vec4<f32>(var_2.x, var_2.x, var_2.x, arg_2.b.x), u_input.a.xy, vec4<u32>(arg_2.d, 18u, 31863u, global1[_wgslsmith_index_u32(1u, 16u)])), Struct_1(var_0.zz, 1u, global2[_wgslsmith_index_u32(global0.x, 2u)], vec3<bool>(true, var_0.x, false)), arg_2.c)));
    let var_4 = ~func_1(!(!var_0.x), _wgslsmith_sub_vec4_i32(u_input.a, u_input.a), -_wgslsmith_clamp_vec4_i32(u_input.a ^ u_input.a, u_input.a, _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -46625i, arg_2.c), u_input.a))).c.ywy;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(global3.a.yzz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global3.a.wyz, global3.a.yww)))), global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(~global0.x, 16u)], firstLeadingBit(48372u), _wgslsmith_add_u32(0u, 1u), 1u), ~reverseBits(global3.c)), 16u)], 2u)]));
    var var_1 = func_6(vec3<f32>(1284f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-414f + global3.a.x))), -296f), global3.b.x, Struct_3(4294967295u, _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_f32(-var_0.x), select(vec2<bool>(false, false), !vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 2u)], false), true), global1[_wgslsmith_index_u32(func_4(func_1(global2[_wgslsmith_index_u32(73699u, 2u)], u_input.a, vec4<i32>(global3.b.x, 0i, 2147483647i, global3.b.x)), Struct_2(vec4<f32>(762f, 665f, global3.a.x, -300f), u_input.a.zw, global3.c), Struct_1(vec2<bool>(true, global2[_wgslsmith_index_u32(global3.c.x, 2u)]), global1[_wgslsmith_index_u32(13796u, 16u)], global2[_wgslsmith_index_u32(global3.c.x, 2u)], vec3<bool>(true, true, true)), u_input.a.x >> (global1[_wgslsmith_index_u32(global0.x, 16u)] % 32u)), 16u)])), abs(u_input.a.x), _wgslsmith_mod_u32(global0.x, countOneBits(_wgslsmith_mod_u32(global0.x, 4294967295u)))));
    global1 = array<u32, 16>();
    var_1 = Struct_5(Struct_2(func_2().a.a, ~(-func_2().a.b), var_1.a.c), countOneBits(-_wgslsmith_dot_vec3_i32(u_input.a.zwx, ~vec3<i32>(-33210i, 0i, 33623i))), true);
    let var_2 = select(~func_4(func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-286f, 331f, 685f)), 0i, Struct_3(0u, vec4<f32>(484f, 1401f, var_1.a.a.x, global3.a.x), 44547i, 1u)).a, func_1(true, vec4<i32>(global3.b.x, var_1.b, var_1.a.b.x, -2147483647i) & vec4<i32>(u_input.a.x, var_1.a.b.x, u_input.a.x, -34743i), _wgslsmith_sub_vec4_i32(u_input.a, u_input.a)), Struct_1(!vec2<bool>(global2[_wgslsmith_index_u32(69919u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(global3.c.x, global3.c.x), global0.zz), all(vec3<bool>(false, false, true)), !vec3<bool>(global2[_wgslsmith_index_u32(global3.c.x, 2u)], false, var_1.c)), abs(u_input.a.x)), global1[_wgslsmith_index_u32(4294967295u, 16u)], true);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(199f, _wgslsmith_f_op_f32(f32(-1f) * -860f)), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(ceil(-236f)))));
    global1 = array<u32, 16>();
    var var_4 = global3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.a.x, global3.b.x, -308f);
}

