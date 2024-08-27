struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<bool>(true, true, true), true, 1000f), Struct_1(vec3<bool>(true, true, false), true, -154f), Struct_1(vec3<bool>(true, true, false), true, 721f), Struct_1(vec3<bool>(true, true, false), true, -1126f), Struct_1(vec3<bool>(true, true, false), false, -747f), Struct_1(vec3<bool>(false, false, false), false, -2293f), Struct_1(vec3<bool>(false, true, true), true, -349f), Struct_1(vec3<bool>(true, true, true), true, -959f));

var<private> global1: Struct_2;

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_2, 22>;

var<private> global4: array<bool, 29> = array<bool, 29>(false, false, true, true, false, true, false, true, false, true, false, true, true, false, true, true, true, true, true, true, false, true, true, false, false, false, false, false, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_1(global2.yxx, !(global1.b > u_input.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1118f))), _wgslsmith_f_op_f32(max(1f, 340f)), true)));
    let var_1 = any(var_0.a.yz);
    let var_2 = ~u_input.b;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c));
    global2 = vec4<bool>(true, firstTrailingBit(firstTrailingBit(1u)) != ~max(countOneBits(global1.b), abs(1u)), !any(!global2.wyw), all(select(select(vec2<bool>(false, global4[_wgslsmith_index_u32(0u, 29u)]), select(global2.wy, vec2<bool>(global2.x, var_0.b), var_1), any(var_0.a)), vec2<bool>(u_input.c > global1.a, false), !select(var_0.a.zz, var_0.a.zz, global2.x))));
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(512f, var_0.c))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-784f, var_0.c)))))), false))));
}

fn func_2() -> Struct_1 {
    let var_0 = any(vec4<bool>(true, !any(vec2<bool>(true, false)), true, any(select(global2.wxx, vec3<bool>(global2.x, global2.x, global2.x), global4[_wgslsmith_index_u32(101201u, 29u)])))) || global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 71382u), vec3<u32>(39780u, 7345u, 4294967295u), vec3<u32>(0u, global1.b, 1u)) << (vec3<u32>(27865u, global1.b, 0u) % vec3<u32>(32u)), ~(~vec3<u32>(global1.b, global1.b, 4294967295u)))), 29u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()));
    global1 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-28063i, _wgslsmith_mult_i32(global1.a, max(2147483647i, u_input.a.x))), global1.a), ~(~1u));
    var var_2 = _wgslsmith_dot_vec3_i32(countOneBits(-(vec3<i32>(global1.a, 0i, global1.a) & vec3<i32>(u_input.a.x, -59162i, global1.a)) >> (~_wgslsmith_sub_vec3_u32(vec3<u32>(70804u, 4294967295u, 30637u), vec3<u32>(4294967295u, u_input.b.x, global1.b)) % vec3<u32>(32u))), min(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, -2147483647i, u_input.d), vec3<i32>(global1.a, -2147483647i, 9366i) | vec3<i32>(-2147483647i, global1.a, u_input.d)), reverseBits(vec3<i32>(1i, 14925i, 71267i)) & ~vec3<i32>(-2147483647i, global1.a, global1.a)), vec3<i32>(0i, min(-30643i, u_input.a.x) | -u_input.a.x, -(~(-2147483647i)))));
    global4 = array<bool, 29>();
    return Struct_1(global2.wzw, any(global2.www), var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec3<i32>) -> vec4<i32> {
    let var_0 = Struct_2(0i, _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, arg_2.b, global1.b, arg_2.b), vec4<u32>(4294967295u, global1.b, arg_2.b, arg_2.b), arg_0.a.x), vec4<u32>(u_input.b.x, arg_2.b, 36776u, 37685u)), 69702u));
    let var_1 = _wgslsmith_mod_vec3_i32((vec3<i32>(17908i, firstTrailingBit(-39488i), 0i) << (countOneBits(~vec3<u32>(36448u, var_0.b, 24219u)) % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b, _wgslsmith_add_u32(u_input.b.x, var_0.b), _wgslsmith_add_u32(0u, var_0.b)), select(vec3<u32>(4294967295u, u_input.b.x, 14327u), firstLeadingBit(vec3<u32>(22758u, 8642u, 1u)), vec3<bool>(true, arg_1.x, global4[_wgslsmith_index_u32(var_0.b, 29u)]))) % vec3<u32>(32u)), arg_3);
    global4 = array<bool, 29>();
    let var_2 = arg_1;
    global3 = array<Struct_2, 22>();
    return -(~vec4<i32>(~(i32(-1i) * -1i), arg_2.a, 1i, var_1.x));
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 1508f)) * arg_0))));
    var_1 = -595f;
    global1 = Struct_2(u_input.c, ~(~(~u_input.b.x)) >> ((~global1.b >> (4294967295u % 32u)) % 32u));
    var var_2 = arg_0;
    return global3[_wgslsmith_index_u32(countOneBits(select(23550u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(21538u, 0u, global1.b, 41907u), vec4<u32>(global1.b, 1u, 4294967295u, u_input.b.x))), func_2().a.x | true)), 22u)];
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = (abs(firstLeadingBit(1i)) >> (arg_0 % 32u)) > ~(-24881i);
    var var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -140f)))), func_4(func_2(), global2.wz, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_0, 10091u, 4093u, 7035u), vec4<u32>(arg_1.b, u_input.b.x, global1.b, global1.b) << (vec4<u32>(34641u, 60711u, u_input.b.x, 0u) % vec4<u32>(32u))), vec4<u32>(~4294967295u, 1u, 4294967295u, 1u)), 22u)], min(~(~vec3<i32>(u_input.d, -2147483647i, u_input.a.x)), -abs(vec3<i32>(arg_1.a, 0i, u_input.d)))), -(vec4<i32>(-2147483647i, abs(2147483647i), 4255i, 37603i) & -vec4<i32>(-1i, global1.a, -2147483647i, global1.a)));
    global3 = array<Struct_2, 22>();
    let var_2 = Struct_2(-countOneBits(~var_1.a), 4294967295u);
    var_1 = func_5(956f, vec4<i32>(_wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, 4393i, 0i, -1i), vec4<i32>(global1.a, -2147483647i, 0i, -31837i)), -32293i), abs(i32(-1i) * -12739i), firstLeadingBit(-u_input.a.x), arg_1.a), vec4<i32>(i32(-1i) * -19795i, _wgslsmith_sub_i32(34028i, min(-13512i, firstLeadingBit(2147483647i))), u_input.c, _wgslsmith_add_i32(1931i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, -550i, u_input.a.x), vec3<i32>(2147483647i, var_2.a, 2147483647i)))));
    return vec2<u32>(min(arg_0, 41714u), firstTrailingBit(max(1u, global1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(select(reverseBits(func_1(reverseBits(73505u), Struct_2(global1.a, 0u))), vec2<u32>(~global1.b, 5692u), vec2<bool>(global2.x, global2.x)));
    let var_1 = (vec4<u32>(1u, 64296u, firstTrailingBit(u_input.b.x), u_input.b.x) << (reverseBits(~vec4<u32>(0u, var_0.x, var_0.x, 0u)) % vec4<u32>(32u))) & (abs(reverseBits(~vec4<u32>(u_input.b.x, 49299u, 1u, u_input.b.x))) & vec4<u32>(~1u, abs(4294967295u), ~4294967295u, var_0.x));
    let var_2 = vec4<i32>(u_input.c, u_input.a.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, -2147483647i, global1.a, -43639i), vec4<i32>(-2147483647i, u_input.d, -17346i, -1i)), max(u_input.c, -66057i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, global1.a, u_input.c), vec3<i32>(global1.a, 0i, 32787i))), 2147483647i);
    var_0 = vec2<u32>(var_1.x, (u_input.b.x | (~0u << (func_5(-296f, vec4<i32>(global1.a, var_2.x, 0i, var_2.x), var_2).b % 32u))) << (var_0.x % 32u));
    let var_3 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(global1.b, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)))) | countOneBits(34624u), 8u)];
    global0 = array<Struct_1, 8>();
    let var_4 = var_3.b;
    global0 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wx | select(~var_2.xy >> (~vec2<u32>(4294967295u, 2480u) % vec2<u32>(32u)), select(countOneBits(u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(-9718i, 2147483647i), var_2.yx), true), !global2.xx), (firstTrailingBit(reverseBits(vec4<i32>(u_input.d, -1i, -2147483647i, global1.a))) << (reverseBits(~var_1) % vec4<u32>(32u))) | var_2);
}

