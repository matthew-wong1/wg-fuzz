struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
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

var<private> global0: Struct_2 = Struct_2(-22418i, Struct_1(vec3<i32>(2147483647i, -48196i, 1i), vec2<bool>(true, true), true, vec2<i32>(2147483647i, 6776i), -1i), vec3<u32>(77045u, 3059u, 1u), Struct_1(vec3<i32>(0i, i32(-2147483648), 13731i), vec2<bool>(true, true), true, vec2<i32>(1i, -1i), i32(-2147483648)));

var<private> global1: array<u32, 21> = array<u32, 21>(4294967295u, 39429u, 69955u, 57434u, 51349u, 1u, 4294967295u, 94030u, 1u, 88188u, 80157u, 57183u, 7238u, 4294967295u, 4294967295u, 66674u, 45013u, 0u, 1u, 1u, 45412u);

var<private> global2: array<u32, 15>;

var<private> global3: vec4<u32>;

var<private> global4: Struct_3 = Struct_3(vec2<bool>(true, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = ~(~0u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1039f, 673f))))))) - -957f);
    global2 = array<u32, 15>();
    let var_2 = vec4<u32>(1u, 40940u, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(0u, 15u)], ~global1[_wgslsmith_index_u32(4294967295u, 21u)]), 39043u);
    let var_3 = _wgslsmith_f_op_f32(sign(412f));
    return false;
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> vec2<bool> {
    let var_0 = 273f;
    global1 = array<u32, 21>();
    global4 = arg_0;
    global0 = Struct_2(0i, global0.b, abs(u_input.c), Struct_1(vec3<i32>(2456i, _wgslsmith_sub_i32(-u_input.a, global0.a), 1i), arg_0.a, all(vec2<bool>(func_1(global0.d.c), arg_0.a.x)), select(_wgslsmith_mult_vec2_i32(global0.d.a.xx, vec2<i32>(-2147483647i, 7126i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 66615i), global0.d.d), !(!vec2<bool>(global4.a.x, global0.d.b.x))), global0.b.a.x));
    global0 = Struct_2(_wgslsmith_clamp_i32(u_input.a, abs(-_wgslsmith_mult_i32(0i, -28343i)), ~abs(select(2147483647i, u_input.a, arg_0.a.x))), Struct_1(global0.b.a & vec3<i32>(-u_input.a, u_input.a, global0.a | global0.a), select(vec2<bool>(true && global4.a.x, false && global4.a.x), !vec2<bool>(global4.a.x, arg_0.a.x), select(vec2<bool>(global0.b.c, false), vec2<bool>(true, global4.a.x), false)), all(vec2<bool>(false, any(vec2<bool>(true, true)))), abs(~vec2<i32>(-1i, u_input.a)), _wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.a, 1i, global0.d.e, 36163i) & vec4<i32>(-1i, -27298i, -40242i, 18538i)), abs(vec4<i32>(-11343i, u_input.a, u_input.a, 63188i)))), ~vec3<u32>(~_wgslsmith_mult_u32(1u, global2[_wgslsmith_index_u32(23758u, 15u)]), global2[_wgslsmith_index_u32(u_input.c.x, 15u)], 84000u), global0.b);
    return select(arg_0.a, vec2<bool>(!arg_0.a.x, true && arg_0.a.x), vec2<bool>(all(global4.a), (!arg_0.a.x | any(vec2<bool>(global0.b.c, global4.a.x))) | any(!vec3<bool>(false, arg_0.a.x, true))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_3 {
    global0 = Struct_2(-15206i, Struct_1(arg_2.d.a, func_3(Struct_3(select(global0.d.b, vec2<bool>(global4.a.x, false), arg_2.d.c)), !global0.d.b.x & global4.a.x), true, select(vec2<i32>(-1i, u_input.a) & _wgslsmith_sub_vec2_i32(global0.b.d, arg_2.d.d), countOneBits(vec2<i32>(arg_0, -3914i)), false), global0.a), (global3.zwy << (max(arg_2.c, vec3<u32>(1u, 4294967295u, arg_2.c.x)) % vec3<u32>(32u))) ^ (global3.wxw << (~arg_1 % vec3<u32>(32u))), global0.b);
    global4 = Struct_3(!vec2<bool>(global0.d.b.x, global0.d.c));
    let var_0 = !any(!select(select(vec4<bool>(true, arg_2.d.b.x, true, false), vec4<bool>(false, global4.a.x, true, false), vec4<bool>(false, true, true, false)), !vec4<bool>(arg_2.d.b.x, false, false, true), select(vec4<bool>(global4.a.x, false, arg_2.d.b.x, true), vec4<bool>(global4.a.x, global4.a.x, global0.d.c, true), arg_2.d.c)));
    let var_1 = Struct_1(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(max(-1i, -2147483647i), u_input.a, 1i)), vec3<i32>(-2147483647i, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-6517i, u_input.a), vec2<i32>(-23125i, 40097i))) | vec3<i32>(-2147483647i, i32(-1i) * -26981i, _wgslsmith_mult_i32(arg_2.d.e, global0.d.a.x))), func_3(Struct_3(global4.a), global4.a.x), true, global0.d.a.yy | -arg_2.b.d, 23613i);
    var var_2 = arg_2;
    return Struct_3(vec2<bool>(true, var_2.d.c & false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = func_2((-global0.b.e << (~_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(0u, var_0.x)) % 32u)) >> (~firstTrailingBit(global2[_wgslsmith_index_u32(0u, 15u)] ^ u_input.c.x) % 32u), global3.xyx, Struct_2(-1i & firstTrailingBit(u_input.a), global0.d, vec3<u32>(4294967295u, ~4294967295u, global0.c.x), Struct_1(-vec3<i32>(global0.b.d.x, 2147483647i, global0.b.a.x) ^ vec3<i32>(1i, u_input.a, global0.b.e), vec2<bool>(select(global0.b.b.x, global4.a.x, global0.b.b.x), func_1(false)), true, abs(vec2<i32>(u_input.a, 30251i)), 1i)));
    global3 = _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(~var_0.x, 4294967295u, var_0.x, var_0.x));
    var var_2 = Struct_1(countOneBits(-global0.b.a), !vec2<bool>((u_input.a ^ -40302i) < (u_input.a | -1i), !(!var_1.a.x)), !var_1.a.x, _wgslsmith_div_vec2_i32(global0.b.a.xx | global0.b.a.yy, max(global0.d.d, vec2<i32>(u_input.a, min(global0.d.a.x, -5004i)))), 7351i << ((var_0.x | var_0.x) % 32u));
    var var_3 = ~1i;
    global1 = array<u32, 21>();
    global4 = func_2(u_input.a, vec3<u32>(~global0.c.x, ~26780u, 51818u) >> (select(firstTrailingBit(firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], var_0.x, 93634u))), global0.c, vec3<bool>(true, true, func_1(true))) % vec3<u32>(32u)), Struct_2(_wgslsmith_mod_i32(abs(-u_input.a), _wgslsmith_mod_i32(u_input.a ^ 1i, global0.d.e)), global0.d, vec3<u32>(u_input.d, ~133u, 1u) | vec3<u32>(firstLeadingBit(1u), u_input.d, _wgslsmith_div_u32(u_input.b.x, var_0.x)), global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~global3.zwx), ~global0.c & (global3.yzx >> (vec3<u32>(global2[_wgslsmith_index_u32(6704u, 15u)], global0.c.x, global2[_wgslsmith_index_u32(global3.x, 15u)]) % vec3<u32>(32u)))), 21u)] & 0u);
}

