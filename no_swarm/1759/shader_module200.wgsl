struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<i32>(2147483647i, 6367i, i32(-2147483648)), vec3<u32>(65210u, 104060u, 0u)), 1367f, Struct_1(vec3<i32>(i32(-2147483648), 32447i, 2147483647i), vec3<u32>(4294967295u, 25545u, 3384u)));

var<private> global1: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec4<i32>(i32(-2147483648), 8211i, 1i, -75532i), Struct_2(Struct_1(vec3<i32>(0i, 9243i, 45051i), vec3<u32>(5888u, 4294967295u, 1u)), -715f, Struct_1(vec3<i32>(38671i, 2147483647i, -3797i), vec3<u32>(4294967295u, 55477u, 32579u)))), Struct_3(vec4<i32>(0i, 2147483647i, 44026i, 4169i), Struct_2(Struct_1(vec3<i32>(51862i, 0i, -15047i), vec3<u32>(0u, 11928u, 21400u)), 580f, Struct_1(vec3<i32>(-1i, 2147483647i, 0i), vec3<u32>(4087u, 7644u, 4615u)))), Struct_3(vec4<i32>(i32(-2147483648), 4909i, 2147483647i, 0i), Struct_2(Struct_1(vec3<i32>(-11081i, 31998i, -17017i), vec3<u32>(46113u, 34777u, 1u)), -1099f, Struct_1(vec3<i32>(8619i, 3868i, 25033i), vec3<u32>(4294967295u, 74179u, 1u)))), Struct_3(vec4<i32>(16898i, -1i, 26868i, -15937i), Struct_2(Struct_1(vec3<i32>(-15559i, 28749i, 18942i), vec3<u32>(7067u, 39346u, 0u)), -1671f, Struct_1(vec3<i32>(23770i, -37132i, 0i), vec3<u32>(0u, 4294967295u, 121595u)))), Struct_3(vec4<i32>(-26993i, -7657i, 17619i, 38960i), Struct_2(Struct_1(vec3<i32>(-1384i, -838i, i32(-2147483648)), vec3<u32>(0u, 0u, 1u)), -1298f, Struct_1(vec3<i32>(1i, -24167i, -7864i), vec3<u32>(4294967295u, 3524u, 4294967295u)))), Struct_3(vec4<i32>(-59918i, 0i, 1i, 14869i), Struct_2(Struct_1(vec3<i32>(-36918i, 4472i, 31899i), vec3<u32>(1u, 1u, 0u)), -1000f, Struct_1(vec3<i32>(0i, 2147483647i, -54917i), vec3<u32>(36391u, 19181u, 37787u)))));

var<private> global2: array<Struct_1, 25>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: f32) -> vec3<u32> {
    global2 = array<Struct_1, 25>();
    var var_0 = -abs((global0.c.a.x | arg_2.b.c.a.x) << (firstLeadingBit(firstTrailingBit(global0.c.b.x)) % 32u));
    global1 = array<Struct_3, 6>();
    var var_1 = _wgslsmith_add_i32(-arg_2.b.a.a.x, 35203i << ((u_input.a & countOneBits(33462u | arg_2.b.c.b.x)) % 32u));
    global2 = array<Struct_1, 25>();
    return ~(~abs(~arg_1.c.b));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(-(~(-(vec4<i32>(-1i, 1i, global0.c.a.x, global0.c.a.x) ^ vec4<i32>(0i, global0.c.a.x, 2147483647i, 17862i)))), Struct_2(Struct_1(max(global0.a.a, _wgslsmith_mult_vec3_i32(global0.a.a, vec3<i32>(-8091i, -1i, 26150i))), _wgslsmith_clamp_vec3_u32(vec3<u32>(12201u, global0.c.b.x, u_input.a), ~global0.c.b, func_3(global0.b, Struct_2(global0.c, 1168f, global2[_wgslsmith_index_u32(global0.c.b.x, 25u)]), global1[_wgslsmith_index_u32(u_input.a, 6u)], 408f))), 1090f, global0.a));
    let var_1 = vec2<i32>(23518i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global0.a.a.zz, vec2<i32>(-9897i, 1943i)), ~vec2<i32>(71255i, global0.c.a.x) | global0.a.a.yy));
    let var_2 = Struct_3(vec4<i32>(abs(_wgslsmith_div_i32(_wgslsmith_add_i32(34258i, global0.c.a.x), 38492i)), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.a.x, i32(-1i) * -1i, 2147483647i, ~var_1.x), (vec4<i32>(-16305i, var_0.b.a.a.x, var_1.x, 59851i) ^ var_0.a) << (vec4<u32>(u_input.a, var_0.b.c.b.x, global0.a.b.x, global0.a.b.x) % vec4<u32>(32u))), ~(-var_0.a.x), 0i), Struct_2(Struct_1(select(global0.a.a, var_0.a.xwx, false) & _wgslsmith_mod_vec3_i32(var_0.b.a.a, vec3<i32>(1i, 0i, 33870i)), global0.a.b), -715f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_0.b.c.b.x) & vec2<u32>(u_input.a, u_input.a), reverseBits(var_0.b.c.b.xy >> (var_0.b.a.b.yz % vec2<u32>(32u)))), 25u)]));
    var var_3 = var_2.b.c.a.x;
    var_0 = Struct_3(_wgslsmith_add_vec4_i32(~(~var_0.a), reverseBits(var_2.a)), var_2.b);
    return Struct_2(Struct_1(global0.c.a, var_2.b.c.b), global0.b, global2[_wgslsmith_index_u32(4294967295u, 25u)]);
}

fn func_1() -> Struct_1 {
    global0 = func_2();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global0.b, -940f)), global0.b, global0.b, _wgslsmith_f_op_f32(global0.b - -1467f))));
    var var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(global0.a.a.x, 0i, 11723i ^ -(global0.a.a.x ^ 0i), abs(max(global0.a.a.x, -global0.c.a.x))), abs(firstTrailingBit(~(vec4<i32>(88047i, -52136i, 16464i, global0.c.a.x) << (vec4<u32>(1u, 4294967295u, global0.a.b.x, 0u) % vec4<u32>(32u))))));
    let var_2 = func_2().b;
    var var_3 = _wgslsmith_add_vec4_u32(~min(~vec4<u32>(0u, u_input.a, 4294967295u, global0.a.b.x), ~reverseBits(vec4<u32>(1u, 0u, 32133u, 1u))), ~select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a.b.x, u_input.a, u_input.a, 4294967295u), vec4<u32>(4294967295u, u_input.a, 1u, global0.a.b.x), vec4<u32>(u_input.a, global0.a.b.x, 11649u, 1u)), ~select(vec4<u32>(1u, 239u, global0.a.b.x, global0.a.b.x), vec4<u32>(u_input.a, global0.a.b.x, 1u, u_input.a), vec4<bool>(true, true, true, true)), false));
    return Struct_1(var_1.ywx ^ -(select(vec3<i32>(1i, 2147483647i, var_1.x), vec3<i32>(var_1.x, var_1.x, 37774i), true) & ~var_1.xwz), global0.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 25>();
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(-global0.b);
    var var_2 = func_1();
    var_0 = Struct_1(abs(-_wgslsmith_mod_vec3_i32(var_2.a, var_0.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.b.x & 0u, 24848u, _wgslsmith_mod_u32(2801u, var_2.b.x)), ~var_0.b));
    global1 = array<Struct_3, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(func_3(global0.b, Struct_2(Struct_1(vec3<i32>(27882i, -1i, 14626i), vec3<u32>(var_0.b.x, 0u, 1u)), global0.b, global2[_wgslsmith_index_u32(var_2.b.x, 25u)]), Struct_3(vec4<i32>(var_0.a.x, var_0.a.x, var_2.a.x, -1i), Struct_2(Struct_1(vec3<i32>(4600i, var_2.a.x, 1525i), var_2.b), 821f, Struct_1(vec3<i32>(global0.c.a.x, 45187i, global0.a.a.x), var_0.b))), 282f).yx, vec2<u32>(~4294967295u, ~global0.a.b.x)), vec3<i32>(var_2.a.x, ~firstTrailingBit(0i), ~var_2.a.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(func_2().b, 1f, _wgslsmith_f_op_f32(min(global0.b, 181f)), _wgslsmith_f_op_f32(-global0.b)))))), var_2.b.x);
}

