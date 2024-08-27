struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(4294967295u, 1u, -1i), Struct_1(48735u, 33785u, 0i), Struct_1(226u, 0u, 1i), Struct_1(0u, 0u, 42468i), Struct_1(1492u, 4294967295u, 75956i), Struct_1(75835u, 0u, 2147483647i), Struct_1(47424u, 4294967295u, 20432i), Struct_1(1u, 0u, 12142i), Struct_1(0u, 4294967295u, 0i), Struct_1(1u, 0u, -54810i), Struct_1(37261u, 4294967295u, -3988i), Struct_1(12955u, 0u, 19042i), Struct_1(50761u, 4294967295u, 55909i), Struct_1(49592u, 31928u, -43175i), Struct_1(0u, 1u, 0i));

var<private> global1: array<Struct_1, 3>;

var<private> global2: vec3<i32> = vec3<i32>(-1i, -1i, 36065i);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: u32, arg_3: bool) -> u32 {
    var var_0 = Struct_1(1u, 33652u, -10052i);
    var var_1 = global1[_wgslsmith_index_u32(~(~(arg_2 & 1u)), 3u)];
    let var_2 = !vec4<bool>(any(vec4<bool>(u_input.a.x != global2.x, any(vec4<bool>(arg_0.x, true, true, true)), 924i < var_1.c, !arg_3)), arg_0.x, arg_3, !arg_3);
    let var_3 = arg_1;
    let var_4 = Struct_1(~_wgslsmith_div_u32(var_1.b, arg_1), abs(0u), 1i);
    return arg_1;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(arg_0 >> ((vec3<u32>(arg_0.x, 4294967295u, 29046u) << (arg_0 % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(4294967295u, func_2(vec3<bool>(true, false, false), 4294967295u, 4294967295u, false), arg_0.x), ~arg_0)), arg_0), 15u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1633f + 582f));
    var var_2 = vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_div_u32(4294967295u, var_0.b), 4294967295u), ~(~(~599u)), 4294967295u);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(countOneBits(~var_0.a), 1u), 42944u), 1u), 15u)];
    var var_4 = global0[_wgslsmith_index_u32(55929u ^ var_2.x, 15u)];
    return Struct_1(arg_0.x, 89802u, ~u_input.a.x);
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = func_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a, arg_0.b, arg_0.b), vec3<u32>(arg_0.a, 4294967295u, 0u)), ~vec3<u32>(21106u, 43599u, arg_0.b)), reverseBits(vec3<u32>(arg_0.a, 82493u, arg_0.b)), min(reverseBits(vec3<u32>(11244u, 48170u, 1u)), abs(vec3<u32>(1u, 0u, 6296u)))) & vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(10389u, 2903u, arg_0.a), vec3<u32>(arg_0.b, arg_0.a, arg_0.a)), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, arg_0.b), ~vec3<u32>(1u, 0u, arg_0.a)), 51827u));
    global0 = array<Struct_1, 15>();
    var var_1 = _wgslsmith_div_i32(~global2.x, 277i);
    let var_2 = global0[_wgslsmith_index_u32(max(~10557u, countOneBits(~(~(~4294967295u)))), 15u)];
    var var_3 = select(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.zz, vec2<i32>(33409i, var_2.c)), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(54815i, 9149i)), _wgslsmith_div_vec2_i32(vec2<i32>(var_2.c, 7361i), vec2<i32>(22160i, 1i)))) ^ (~global2.xz | (global2.zy & abs(vec2<i32>(18533i, arg_0.c)))), select(-u_input.a.zx, ~vec2<i32>(global2.x & var_0.c, u_input.a.x), !vec2<bool>(select(true, true, false), true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))) | any(vec2<bool>(true, true)));
    return ~vec3<u32>(~(min(var_2.a, arg_0.a) & var_2.b), firstLeadingBit(select(min(1u, 4294967295u), 1u, true)), _wgslsmith_clamp_u32(reverseBits(~var_0.a), _wgslsmith_clamp_u32(arg_0.a, reverseBits(arg_0.b), var_0.a), func_1(vec3<u32>(arg_0.a, arg_0.a, var_0.a)).b | 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a.zxx;
    global1 = array<Struct_1, 3>();
    global1 = array<Struct_1, 3>();
    let var_0 = func_1(firstTrailingBit(~(~(~vec3<u32>(66662u, 0u, 64384u)))));
    let var_1 = -u_input.a.wzw << ((firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, 57354u, 4294967295u), vec3<u32>(var_0.a, var_0.b, var_0.a)) ^ max(vec3<u32>(82982u, var_0.b, var_0.b), vec3<u32>(0u, 1u, var_0.b))) & (select(func_3(Struct_1(var_0.b, var_0.b, var_0.c)), ~vec3<u32>(57396u, 4294967295u, 1u), vec3<bool>(true, true, false)) ^ vec3<u32>(var_0.a, 8715u, 4294967295u))) % vec3<u32>(32u));
    var var_2 = Struct_1(~(~62540u), ~(~var_0.a), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(-1i, max(35588i, var_1.x)) >> (min(vec2<u32>(4294967295u, var_2.b), vec2<u32>(30783u, 35706u)) % vec2<u32>(32u))));
}

