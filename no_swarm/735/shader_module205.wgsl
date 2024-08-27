struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(17667u, 35582u, 59750u, 1u, 51241u, 43622u, 1u, 4294967295u, 19699u, 0u, 4294967295u, 4294967295u, 4294967295u, 1u, 29902u);

var<private> global1: Struct_4;

var<private> global2: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    global2 = Struct_1(~vec2<u32>(_wgslsmith_dot_vec2_u32(global2.a, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7180u, 15u)], 15u)], 29023u)) & 11555u, global1.d.a.a.x), global2.b, global2.b.yz);
    let var_0 = global2.a;
    let var_1 = global1.d.a.c;
    var var_2 = -(min(reverseBits(_wgslsmith_mult_i32(0i, 0i)), u_input.c) ^ ~u_input.a.x);
    var var_3 = -158f;
    return -603f;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = ~arg_0.a.x;
    let var_1 = global1.d.a.b.zzz;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1566f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1236f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1180f, -1000f)) + -223f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f), -390f))))));
    let var_3 = max(~(~arg_0.a), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 76776u, u_input.d.x, arg_0.a.x), vec4<u32>(u_input.b.x, u_input.d.x, 4294967295u, 1u), vec4<u32>(37548u, u_input.d.x, 40329u, global2.a.x)), u_input.b) << (~_wgslsmith_div_u32(0u, 83094u) % 32u), 6960u, ~global0[_wgslsmith_index_u32(~(u_input.b.x | 56385u), 15u)], ~((global0[_wgslsmith_index_u32(global1.e.x, 15u)] ^ arg_0.a.x) << (arg_0.a.x % 32u))));
    global1 = Struct_4(select(vec3<u32>(_wgslsmith_add_u32(1u, reverseBits(global1.a.x)), abs(28632u), arg_0.a.x), ~((arg_0.a.yyy & vec3<u32>(39261u, var_3.x, var_3.x)) & vec3<u32>(0u, 29432u, 1u)), global2.b.wyx), vec4<i32>(17747i, ~_wgslsmith_clamp_i32(arg_1.x, -75190i, arg_1.x), select(_wgslsmith_add_i32(global1.b.x >> (arg_0.a.x % 32u), -1i), ~u_input.a.x, true), _wgslsmith_add_i32(_wgslsmith_sub_i32(~(-5756i), global1.b.x), _wgslsmith_mod_i32(~27714i, arg_1.x))), ~(~(vec3<i32>(2147483647i, global1.c.x, -2147483647i) ^ ~vec3<i32>(arg_1.x, 2147483647i, arg_1.x))), global1.d, global1.a.yy);
    return global1.d;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: vec2<i32>) -> vec2<u32> {
    let var_0 = global1.a.x;
    let var_1 = vec4<u32>(~u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~firstTrailingBit(0u), ~(global2.a.x | arg_1.e.x), firstLeadingBit(~global1.d.a.a.x)), ~countOneBits(vec3<u32>(0u, 40520u, global0[_wgslsmith_index_u32(arg_1.d.a.a.x, 15u)])) << (vec3<u32>(18789u, select(global2.a.x, 17718u, true), ~58498u) % vec3<u32>(32u))), ~_wgslsmith_sub_u32(max(firstLeadingBit(global2.a.x), 2313u), 4294967295u), ~30832u);
    let var_2 = (arg_2.x >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(func_3())))) || (global2.b.x | arg_0);
    let var_3 = arg_1.d;
    var var_4 = func_2(Struct_3(var_1, global1.d.a.b.x | !var_2), vec3<i32>(-1i, 2147483647i, ~(u_input.c << (~global2.a.x % 32u))));
    return max(~global2.a, ~(vec2<u32>(~global0[_wgslsmith_index_u32(global2.a.x, 15u)], _wgslsmith_div_u32(var_4.a.a.x, 0u)) & min(vec2<u32>(1u, 1u), select(vec2<u32>(arg_1.a.x, 58576u), vec2<u32>(var_1.x, var_4.a.a.x), false))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec2<bool>) -> Struct_4 {
    var var_0 = 46342i;
    let var_1 = 60307u;
    let var_2 = Struct_4(vec3<u32>(~55891u, _wgslsmith_mult_u32((4294967295u << (arg_1.a.x % 32u)) >> (firstTrailingBit(38579u) % 32u), global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(global1.d.a.a.x, 15u)], 17208u), 15u)] >> (85862u % 32u)), 1u), reverseBits(max(global1.b, countOneBits(global1.b))) << ((u_input.b ^ ~(~u_input.b)) % vec4<u32>(32u)), global1.b.zzy, global1.d, u_input.b.xz >> ((~u_input.d.zx >> (vec2<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)] << (global2.a.x % 32u), 5468u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_0 = _wgslsmith_sub_i32(~(-firstTrailingBit(u_input.a.x)), -30255i);
    var var_3 = func_2(Struct_3(select(max(~vec4<u32>(var_1, arg_1.a.x, 38504u, 1578u), abs(vec4<u32>(14890u, global2.a.x, u_input.d.x, global2.a.x))), vec4<u32>(_wgslsmith_sub_u32(4294967295u, global2.a.x), ~16354u, global0[_wgslsmith_index_u32(var_1, 15u)], reverseBits(1u)), func_2(Struct_3(vec4<u32>(var_2.a.x, global2.a.x, u_input.b.x, var_1), true), vec3<i32>(global1.c.x, global1.b.x, 51283i)).a.c.x), true), vec3<i32>(firstLeadingBit(abs(global1.c.x) >> ((4294967295u | arg_1.a.x) % 32u)), max(~_wgslsmith_clamp_i32(u_input.a.x, u_input.c, global1.b.x), firstTrailingBit(var_2.b.x << (arg_1.a.x % 32u))), _wgslsmith_dot_vec4_i32(var_2.b, vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 0i), var_2.b.x, abs(2147483647i), u_input.c)))).a.b;
    return var_2;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<bool>) -> i32 {
    var var_0 = func_5(arg_1.a.b, Struct_1(func_4(all(vec3<bool>(arg_1.a.c.x, false, true)) | arg_1.a.c.x, Struct_4(~vec3<u32>(u_input.d.x, global1.e.x, 0u), ~global1.b, -vec3<i32>(-2723i, 0i, -2147483647i), func_2(arg_0, vec3<i32>(-1i, u_input.a.x, u_input.a.x)), ~global1.d.a.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2514f, -394f, 309f, 1000f) * vec4<f32>(1000f, -676f, 338f, 836f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1294f, -1410f, -1145f, -1551f))), all(vec3<bool>(true, true, true)))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 4040i), global1.b.yx), vec2<i32>(1i, u_input.c), global1.b.zx)), global2.b, vec2<bool>(true, arg_2.x)), select(arg_1.a.b.wyy, select(vec3<bool>(true, true, arg_1.a.c.x), vec3<bool>(false, arg_0.b, false), true), any(vec2<bool>(false, true)) || all(!global1.d.a.b)), !global1.d.a.c);
    var_0 = func_5(var_0.d.a.b, global1.d.a, func_2(Struct_3(arg_0.a >> (vec4<u32>(4294967295u, 4294967295u, var_0.e.x, global1.a.x) % vec4<u32>(32u)), true), -_wgslsmith_add_vec3_i32(global1.b.xzw, global1.c) ^ -vec3<i32>(var_0.c.x, var_0.b.x, -2147483647i)).a.b.zxw, !global2.b.wz);
    var var_1 = arg_0.b;
    var var_2 = vec2<f32>(-2021f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(331f, _wgslsmith_f_op_f32(func_3())))));
    return _wgslsmith_add_i32(0i, -var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(vec3<u32>(global2.a.x, ~19801u, global1.e.x), global1.b, _wgslsmith_div_vec3_i32(-(~(-vec3<i32>(-2147483647i, u_input.c, u_input.c))), _wgslsmith_add_vec3_i32(-vec3<i32>(global1.c.x, 2147483647i, 9980i), vec3<i32>(func_1(Struct_3(vec4<u32>(12417u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a.x, 15u)], 15u)], 39522u, 4294967295u), global2.b.x), Struct_2(Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(global2.a.x, 15u)], u_input.b.x), vec4<bool>(global1.d.a.b.x, global1.d.a.b.x, global1.d.a.c.x, global2.b.x), vec2<bool>(false, false))), vec2<bool>(global2.b.x, true)), func_1(Struct_3(vec4<u32>(0u, u_input.d.x, 2506u, global2.a.x), global2.c.x), global1.d, vec2<bool>(global1.d.a.b.x, global1.d.a.b.x)), 14923i))), Struct_2(global1.d.a), vec2<u32>(0u, _wgslsmith_add_u32(~u_input.b.x, 67692u)));
    var var_0 = global1.a.x;
    global0 = array<u32, 15>();
    var var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1445f + _wgslsmith_f_op_f32(floor(-798f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(211f, 1424f)), _wgslsmith_f_op_f32(-621f * 1949f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(115f - -1966f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-507f, -355f), vec2<f32>(-1000f, 1585f), global2.c.x)), vec2<f32>(1510f, -839f)))))));
    global0 = array<u32, 15>();
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(351f, var_1.x) * vec2<f32>(604f, 642f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1000f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 923f) + vec2<f32>(-804f, var_1.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, var_1.x))), global2.b.yz)))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)))), _wgslsmith_f_op_f32(-230f + -1313f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, var_1.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-830f, var_1.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -484f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2365f, -108f))))));
    global1 = Struct_4(func_5(!global1.d.a.b, Struct_1(vec2<u32>(34464u | global1.d.a.a.x, u_input.d.x), func_5(!global2.b, global1.d.a, select(vec3<bool>(global1.d.a.c.x, true, global2.c.x), global1.d.a.b.yyx, global2.b.yww), !global1.d.a.c).d.a.b, global2.b.xz), select(global2.b.xzx, global1.d.a.b.xxy, true), !func_2(Struct_3(vec4<u32>(1u, u_input.b.x, 19401u, 4294967295u), false), -vec3<i32>(9458i, u_input.c, global1.b.x)).a.c).a, global1.b, _wgslsmith_mod_vec3_i32(select(func_5(global2.b, Struct_1(vec2<u32>(1u, 31462u), vec4<bool>(global1.d.a.b.x, false, global2.b.x, global2.b.x), global2.b.xx), global1.d.a.b.yyy, vec2<bool>(true, true)).b.zyz, ~_wgslsmith_clamp_vec3_i32(global1.c, vec3<i32>(-6481i, global1.b.x, 54327i), global1.b.wyy), global1.d.a.b.x), abs(max(countOneBits(vec3<i32>(global1.c.x, u_input.c, 4002i)), vec3<i32>(-1i, 2147483647i, -2147483647i)))), global1.d, ~(~(max(global1.e, global2.a) << (~global1.a.yy % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(2283f * _wgslsmith_f_op_f32(418f - -469f)));
}

