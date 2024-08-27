struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: Struct_3,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22>;

var<private> global1: vec3<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> i32 {
    global1 = ~(~select(vec3<i32>(arg_1.x, 61076i ^ global1.x, _wgslsmith_add_i32(global1.x, 0i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(-15026i, -1i, global1.x), arg_1), true));
    let var_0 = select(-vec2<i32>(_wgslsmith_dot_vec2_i32(global1.xx, -arg_1.yy), _wgslsmith_div_i32(-2147483647i ^ global1.x, firstTrailingBit(-2147483647i))), vec2<i32>(abs(0i), global1.x) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 0u) >> (u_input.a.yy % vec2<u32>(32u)), u_input.a.zx) % vec2<u32>(32u)), select(select(vec2<bool>(true, arg_0 >= u_input.a.x), vec2<bool>(24610u == arg_0, any(vec4<bool>(true, false, false, false))), !any(vec3<bool>(true, true, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), all(vec4<bool>(all(vec3<bool>(false, true, true)), true, false, true))));
    global1 = _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -16056i, 0i), ~(-arg_1)) ^ vec3<i32>(max(arg_1.x, -_wgslsmith_clamp_i32(-2147483647i, global1.x, 2147483647i)), 27541i, reverseBits(0i));
    let var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, var_0.x) ^ -12925i, _wgslsmith_add_i32(-var_0.x, _wgslsmith_mod_i32(68340i, 32124i))), ~0i), ~vec3<i32>(-48077i, 1i, firstLeadingBit(-1i)), _wgslsmith_mult_vec3_i32(arg_1, -(vec3<i32>(-1i) * -vec3<i32>(1i, -12262i, 40938i))));
    var var_2 = global0[_wgslsmith_index_u32(~4294967295u >> (arg_0 % 32u), 22u)];
    return abs(global1.x);
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_2 {
    var var_0 = global1.x;
    global0 = array<Struct_4, 22>();
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-721f))))));
    global1 = vec3<i32>(1i, func_3(_wgslsmith_sub_u32(u_input.a.x, firstLeadingBit(_wgslsmith_clamp_u32(82001u, 1138u, u_input.a.x))), -(~select(vec3<i32>(-1i, 17511i, -1i), vec3<i32>(-7977i, global1.x, global1.x), vec3<bool>(false, false, false)))), ~(-26580i));
    let var_2 = Struct_1(global1.x);
    return Struct_2(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(select(4294967295u, 94317u, true), 4294967295u, _wgslsmith_sub_u32(8463u, 0u))), u_input.a));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = ~vec4<i32>(func_3(u_input.a.x, max(arg_3, arg_3)), arg_3.x, -16902i, ~(-39684i));
    var var_1 = _wgslsmith_f_op_f32(-1f);
    global1 = var_0.ywx;
    var var_2 = global0[_wgslsmith_index_u32(0u, 22u)];
    let var_3 = i32(-1i) * -1i;
    return Struct_1(var_2.c.c);
}

fn func_1(arg_0: f32) -> vec2<u32> {
    var var_0 = func_4(u_input.a.x, -114f, func_2(arg_0, arg_0), vec3<i32>(-global1.x, _wgslsmith_mult_i32(global1.x, global1.x), -6814i) >> (vec3<u32>(17889u, u_input.a.x, 1u) % vec3<u32>(32u)));
    var var_1 = arg_0;
    var_0 = Struct_1(23329i);
    var_1 = arg_0;
    let var_2 = !select(false, false, any(vec4<bool>(true, any(vec2<bool>(false, true)), arg_0 == arg_0, true)));
    return firstTrailingBit(u_input.a.xx << ((~select(u_input.a.zz, vec2<u32>(117861u, 0u), var_2) << (min(vec2<u32>(1u, u_input.a.x), vec2<u32>(6925u, u_input.a.x)) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(~(~vec3<i32>(49589i, 23175i, 2147483647i) | vec3<i32>(~global1.x, _wgslsmith_div_i32(43088i, global1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, -26549i, global1.x), vec3<i32>(1i, 18535i, global1.x)))), max(vec3<i32>(_wgslsmith_div_i32(global1.x, -26103i) | _wgslsmith_sub_i32(1i, -24783i), ~(-1i), -29967i), vec3<i32>(_wgslsmith_div_i32(~global1.x, -2147483647i), global1.x, 19086i)));
    global1 = vec3<i32>(-1i) * -(~_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, 15736i, -13104i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-27088i, var_0, -1i), vec3<i32>(-2147483647i, -7611i, -1i), vec3<i32>(-2147483647i, 45209i, var_0))));
    let var_1 = Struct_3(firstLeadingBit(_wgslsmith_clamp_vec2_u32(~reverseBits(vec2<u32>(u_input.a.x, u_input.a.x)), func_1(_wgslsmith_f_op_f32(248f - 1080f)), u_input.a.zy)), func_4(firstTrailingBit(countOneBits(~u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1202f + 376f), 1f))), Struct_2(~(~1u)), vec3<i32>(var_0, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global1.yz, vec2<i32>(1i, var_0)), global1.yy ^ global1.yy), -(i32(-1i) * -43615i))), reverseBits(~(global1.x >> (~67551u % 32u))));
    let var_2 = true;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(-462f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -298f) * _wgslsmith_f_op_f32(f32(-1f) * -439f)))), 701f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2208f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1447f + -1000f)))));
    global1 = _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(abs(var_0 ^ -76459i), _wgslsmith_add_i32(var_0, max(-43321i, -1i)), func_4(1u, _wgslsmith_div_f32(var_3.x, var_3.x), func_2(var_3.x, 578f), vec3<i32>(2147483647i, var_1.c, var_0) ^ vec3<i32>(var_1.c, global1.x, var_1.b.a)).a), vec3<i32>(-41637i, global1.x, func_3(u_input.a.x, max(vec3<i32>(var_0, var_1.c, -42195i), vec3<i32>(var_1.b.a, global1.x, 2147483647i)))), -vec3<i32>(52845i, -global1.x, -82024i)), -min(~vec3<i32>(1i, var_1.b.a, global1.x), ~(~vec3<i32>(var_0, 13265i, var_1.b.a))));
    let var_4 = countOneBits(_wgslsmith_mod_i32(func_3(func_2(_wgslsmith_f_op_f32(abs(-454f)), _wgslsmith_f_op_f32(-var_3.x)).a, abs(-vec3<i32>(var_0, 2147483647i, -11598i))), 2147483647i));
    var var_5 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.x)) - 723f), _wgslsmith_f_op_f32(trunc(var_3.x)));
    var var_6 = var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(global1.yy, 1022f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_3.x, -600f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-975f)))))))));
}

