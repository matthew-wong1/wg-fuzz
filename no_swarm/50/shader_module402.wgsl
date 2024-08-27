struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    global0 = select(-(~firstLeadingBit(vec4<i32>(global0.x, 14417i, -2147483647i, 10517i))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(21596i, global0.x), -1i), -global0.xy), global0.x, -2147483647i, countOneBits(global0.x)), select(select(vec4<bool>(true, arg_0.x != -556f, true, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, false), all(vec3<bool>(true, true, true))), vec4<bool>(false, any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), _wgslsmith_f_op_f32(-arg_0.x) == _wgslsmith_f_op_f32(-789f - 757f), u_input.a.x >= abs(0u)), select(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))))));
    let var_0 = Struct_1(select(vec2<bool>(!all(vec3<bool>(false, false, true)), false), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), true), vec2<bool>(true, false)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(45459i, -2147483647i, -23909i) >> (47489u % 32u), ~global0.x | abs(global0.x), reverseBits(-7180i)), vec3<i32>(20422i, global0.x, _wgslsmith_sub_i32(global0.x, ~global0.x))), global0.x);
    global0 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c, 2147483647i, ~max(var_0.b.x, var_0.b.x), reverseBits(abs(-35844i))), vec4<i32>(2147483647i, select(-var_0.b.x, _wgslsmith_mult_i32(1i, global0.x), var_0.a.x | var_0.a.x), var_0.b.x, ~_wgslsmith_sub_i32(var_0.b.x, var_0.b.x)));
    let var_1 = var_0;
    let var_2 = select(!select(vec4<bool>(true, true, any(vec3<bool>(true, var_1.a.x, true)), true | var_0.a.x), !vec4<bool>(true, false, var_0.a.x, var_0.a.x), !var_0.a.x), select(!vec4<bool>(true, var_0.a.x, !var_0.a.x, select(var_0.a.x, var_1.a.x, var_1.a.x)), !select(vec4<bool>(true, var_0.a.x, var_1.a.x, var_1.a.x), select(vec4<bool>(false, true, true, var_0.a.x), vec4<bool>(true, false, var_0.a.x, var_1.a.x), vec4<bool>(var_0.a.x, false, var_1.a.x, false)), !var_1.a.x), select(!vec4<bool>(true, var_1.a.x, var_1.a.x, var_0.a.x), select(select(vec4<bool>(var_0.a.x, var_0.a.x, var_1.a.x, false), vec4<bool>(true, false, true, var_0.a.x), vec4<bool>(true, var_1.a.x, var_0.a.x, false)), vec4<bool>(var_1.a.x, var_1.a.x, var_0.a.x, var_0.a.x), all(vec3<bool>(true, false, false))), vec4<bool>(select(true, var_0.a.x, var_0.a.x), true, var_1.a.x, !var_1.a.x))), true);
    return ~(-countOneBits(_wgslsmith_dot_vec4_i32(min(vec4<i32>(var_0.c, 48535i, -28084i, global0.x), vec4<i32>(var_0.c, -24013i, var_0.c, global0.x)), vec4<i32>(global0.x, 1i, var_1.c, var_0.c) << (u_input.a % vec4<u32>(32u)))));
}

fn func_2() -> i32 {
    let var_0 = !vec3<bool>(true, false == any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), false);
    global0 = abs(vec4<i32>(~func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(677f, -1538f, -557f) - vec3<f32>(451f, 385f, -1543f))), 2147483647i, _wgslsmith_mult_i32(global0.x, 16900i), 1i));
    var var_1 = Struct_3(Struct_2(Struct_1(var_0.xz, global0.zwy, -55726i), _wgslsmith_sub_vec3_u32(~u_input.a.www, u_input.a.xyx) >> (vec3<u32>(38583u, u_input.a.x, ~u_input.a.x) % vec3<u32>(32u)), _wgslsmith_div_f32(570f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f) - 930f))), Struct_2(Struct_1(select(var_0.xz, select(var_0.zx, var_0.yz, var_0.x), var_0.zz), vec3<i32>(abs(1i), ~global0.x, ~global0.x), -(i32(-1i) * -30449i)), u_input.a.yzy, -672f));
    var var_2 = Struct_3(Struct_2(Struct_1(!vec2<bool>(var_0.x, var_0.x), firstTrailingBit(firstLeadingBit(global0.yxy)), var_1.a.a.c), select(_wgslsmith_clamp_vec3_u32(u_input.a.yzy, firstLeadingBit(var_1.b.b), _wgslsmith_div_vec3_u32(vec3<u32>(49156u, 0u, var_1.a.b.x), vec3<u32>(0u, u_input.a.x, 39864u))), vec3<u32>(var_1.b.b.x, var_1.b.b.x, ~var_1.a.b.x), !(369f < var_1.b.c)), var_1.a.c), Struct_2(Struct_1(vec2<bool>(var_0.x | true, var_1.b.a.a.x && var_1.a.a.a.x), var_1.b.a.b, max(global0.x, -global0.x)), vec3<u32>(u_input.a.x, 0u, ~u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1659f * 893f))));
    return _wgslsmith_mult_i32(-abs(var_1.a.a.c), 3327i);
}

fn func_1(arg_0: bool) -> i32 {
    global0 = vec4<i32>(func_2(), _wgslsmith_clamp_i32(global0.x, _wgslsmith_clamp_i32(abs(global0.x), global0.x, -global0.x), global0.x) & _wgslsmith_mult_i32(global0.x, _wgslsmith_mult_i32(global0.x | global0.x, global0.x)), ~((firstTrailingBit(-17254i) >> (~u_input.a.x % 32u)) | countOneBits(global0.x)), _wgslsmith_sub_i32(global0.x, _wgslsmith_clamp_i32(-22067i, global0.x, global0.x)));
    global0 = ~(((vec4<i32>(global0.x, global0.x, 705i, global0.x) >> (vec4<u32>(19892u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) ^ vec4<i32>(-8933i, -75686i, -2147483647i, 0i)) << (vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), u_input.a.yyz), u_input.a.x, min(u_input.a.x, 65908u)) % vec4<u32>(32u))) & abs(abs(vec4<i32>(_wgslsmith_clamp_i32(-64i, global0.x, global0.x), global0.x << (4294967295u % 32u), 1i, _wgslsmith_div_i32(global0.x, global0.x))));
    global0 = vec4<i32>(max(1i, abs(global0.x & global0.x) << (_wgslsmith_dot_vec3_u32(~u_input.a.ywx, u_input.a.yzz) % 32u)), _wgslsmith_mod_i32(0i >> (_wgslsmith_clamp_u32(abs(1u), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x) % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.x, -10443i, global0.x, global0.x), vec4<i32>(max(global0.x, global0.x), 0i, global0.x, global0.x))), global0.x, select(_wgslsmith_mod_i32(firstTrailingBit(global0.x), _wgslsmith_mod_i32(global0.x, -2147483647i)) & (i32(-1i) * -global0.x), -12110i, false));
    global0 = select(max(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, 33117i, 0i, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, -1i, global0.x, global0.x), vec4<i32>(-18392i, 2147483647i, global0.x, global0.x)), abs(vec4<i32>(global0.x, global0.x, 2147483647i, global0.x))), -vec4<i32>(27186i, 36011i, 2821i, global0.x)), _wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, -24780i), vec4<i32>(0i, 1i, global0.x, global0.x)), vec4<i32>(-global0.x, ~global0.x, ~global0.x, 68710i), reverseBits(vec4<i32>(global0.x, 4380i, 17602i, -1i)))), -select(vec4<i32>(max(global0.x, global0.x), _wgslsmith_mod_i32(-1i, -1i), ~global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-75623i, global0.x, global0.x), global0.wzx)), min(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -12777i, 0i, global0.x), vec4<i32>(1i, global0.x, global0.x, 1i)), vec4<i32>(global0.x, -24645i, 26378i, -1i)), !(!arg_0)), false);
    var var_0 = Struct_2(Struct_1(select(select(vec2<bool>(true, true), select(vec2<bool>(false, arg_0), vec2<bool>(true, true), false), select(vec2<bool>(true, arg_0), vec2<bool>(true, true), vec2<bool>(false, false))), !vec2<bool>(arg_0, false), vec2<bool>(arg_0, !arg_0)), vec3<i32>(global0.x, ~global0.x & 1i, ~(-24317i)), min(global0.x, ~_wgslsmith_dot_vec2_i32(global0.zy, vec2<i32>(79624i, global0.x)))), max(u_input.a.xxw >> (vec3<u32>(u_input.a.x, ~u_input.a.x, ~u_input.a.x) % vec3<u32>(32u)), u_input.a.wzz), -1000f);
    return 8926i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec2<i32>(-1i) * -global0.wx);
    var_0 = _wgslsmith_mult_vec2_i32(~(~vec2<i32>(func_1(true), -45442i)), vec2<i32>(var_0.x, 10602i));
    var var_1 = ~vec3<i32>(-52251i, _wgslsmith_sub_i32(~(-1i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-1297i, 38042i, -17047i), vec3<i32>(-2147483647i, var_0.x, global0.x))), 1035i);
    let var_2 = ~u_input.a.x;
    var_0 = vec2<i32>(-13360i, ~(i32(-1i) * -_wgslsmith_mult_i32(1i, global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1175f, 240f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(587f, 394f), vec2<f32>(819f, -469f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(311f, -515f) * vec2<f32>(-463f, 1459f)), vec2<f32>(531f, 1000f), vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), true)))), -205f, min(reverseBits(select(select(vec3<u32>(var_2, 29437u, 69191u), u_input.a.wwz, false), u_input.a.yzw << (vec3<u32>(1u, 3788u, var_2) % vec3<u32>(32u)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))), ~(select(vec3<u32>(1u, u_input.a.x, u_input.a.x), u_input.a.zyx, true) & ~u_input.a.wyx)), -488f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1108f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(563f + -350f) + -577f)))));
}

