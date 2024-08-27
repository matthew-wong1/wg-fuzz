struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(Struct_2(vec3<f32>(1000f, 442f, 600f), -1178f, vec3<u32>(4294967295u, 1u, 1u), 49293u), vec2<u32>(47231u, 26060u), 1209f), Struct_4(Struct_2(vec3<f32>(-466f, 821f, -172f), -392f, vec3<u32>(31225u, 4294967295u, 27649u), 57706u), vec2<u32>(27901u, 4294967295u), 644f), Struct_4(Struct_2(vec3<f32>(1000f, 505f, -1243f), -981f, vec3<u32>(1u, 489u, 1u), 4294967295u), vec2<u32>(12807u, 1u), -592f), Struct_4(Struct_2(vec3<f32>(1066f, 232f, -1170f), -409f, vec3<u32>(0u, 19285u, 4294967295u), 0u), vec2<u32>(1u, 4294967295u), 343f), Struct_4(Struct_2(vec3<f32>(396f, 1239f, 971f), 246f, vec3<u32>(1u, 4294967295u, 77263u), 44024u), vec2<u32>(4294967295u, 1u), 229f));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_3 {
    global0 = Struct_4(global0.a, _wgslsmith_sub_vec2_u32(~vec2<u32>(17998u << (global0.a.c.x % 32u), firstTrailingBit(global0.a.d)), global0.a.c.zz), -2036f);
    return Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global0.a.a.yy + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global0.a.a.zy - global0.a.a.xx)))))), vec2<bool>(false, false));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> u32 {
    var var_0 = ~(~select(vec4<i32>(arg_0, -3036i, arg_0, _wgslsmith_sub_i32(1i, arg_0)), firstLeadingBit(-vec4<i32>(28912i, -43906i, arg_0, 2147483647i)), !arg_3.b | !arg_2.b.x));
    var var_1 = ~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(max(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.a, arg_3.a, global0.a.d, 41372u), vec4<u32>(45292u, 0u, global0.a.c.x, global0.b.x)), abs(vec4<u32>(51358u, 1u, u_input.b, 80547u))), vec4<u32>(~arg_3.a, u_input.a, arg_3.a, 4294967295u), vec4<u32>(1u | arg_3.a, 24632u, abs(u_input.a), 1u)), firstTrailingBit(abs(vec4<u32>(u_input.b, 4294967295u, 52024u, 0u) << (vec4<u32>(5491u, 54156u, 11440u, u_input.a) % vec4<u32>(32u)))));
    var var_2 = true;
    var var_3 = true;
    var var_4 = Struct_1(18162u, arg_2.b.x, vec2<bool>(!(!(false || arg_2.b.x)), all(!vec2<bool>(arg_3.b, true))));
    return _wgslsmith_sub_u32(0u, ~(max(_wgslsmith_add_u32(u_input.a, global0.a.c.x), _wgslsmith_clamp_u32(var_1.x, arg_3.a, 8442u)) ^ ~countOneBits(87007u)));
}

fn func_1() -> i32 {
    var var_0 = 55862u;
    var_0 = func_3(3362i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.a.a.x, 753f)), global0.a.b)), func_2(40676i, true), Struct_1(abs(35619u), true, vec2<bool>(true, true))) & _wgslsmith_sub_u32(reverseBits(global0.b.x), ~u_input.a);
    var var_1 = select(select(!vec4<bool>(func_2(1i, true).b.x, true, true, select(true, false, false)), vec4<bool>(true, select(true, true, true), true, false), vec4<bool>(all(vec3<bool>(true, true, true)), (global0.b.x == 4294967295u) & func_2(-2147483647i, false).b.x, true, true)), vec4<bool>(select(~1u, 0u, true) != u_input.b, any(vec3<bool>(true, true, all(vec2<bool>(false, false)))), true, select(true, any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-global0.a.b) > _wgslsmith_f_op_f32(f32(-1f) * -700f))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false))), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, func_2(0i, true).b.x, any(vec3<bool>(false, true, false)))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = !(!(!vec4<bool>(true, 0u == global0.a.d, true, true)));
    let var_2 = -vec4<i32>(~(-1023i), ~func_1(), abs(-(-1i >> (0u % 32u))), _wgslsmith_sub_i32(~(-1i >> (global0.b.x % 32u)), select(~(-2147483647i), _wgslsmith_add_i32(48343i, 1i), global0.c != -1462f)));
    let var_3 = select(vec4<u32>(countOneBits(0u), countOneBits(~4294967295u), global0.a.d, ~_wgslsmith_dot_vec2_u32(global0.a.c.xx ^ global0.a.c.xz, global0.a.c.yx)), _wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(global0.a.d), 16243u, countOneBits(~4294967295u), global0.b.x), ~_wgslsmith_div_vec4_u32(vec4<u32>(29239u, global0.b.x, u_input.b, 1u), ~vec4<u32>(1u, u_input.b, 7477u, u_input.b))), select(vec4<bool>(var_2.x > _wgslsmith_div_i32(-1i, 565i), true, var_1.x, _wgslsmith_add_i32(var_2.x, var_2.x) == -1i), select(!vec4<bool>(var_1.x, false, true, var_1.x), select(!vec4<bool>(false, var_1.x, var_1.x, var_1.x), select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), false), !var_1.x), all(var_1.yx)), !var_1.x && var_1.x));
    var_0 = min(firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(58095u, 1u, 4294967295u), _wgslsmith_clamp_vec3_u32(var_3.wyx, vec3<u32>(var_3.x, 1u, 70523u), vec3<u32>(var_3.x, var_3.x, 47948u)))), ~_wgslsmith_add_u32(global0.b.x, var_3.x));
    global1 = array<Struct_4, 5>();
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.a.a.zz))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -916f), global0.c)))), var_1.xx);
    let var_5 = Struct_2(vec3<f32>(-130f, -931f, var_4.a.x), _wgslsmith_f_op_f32(-var_4.a.x), vec3<u32>(4294967295u, u_input.b, 4294967295u), var_3.x);
    var_0 = _wgslsmith_clamp_u32(select(0u, ~(~(~4294967295u)), true), _wgslsmith_div_u32(global0.b.x, abs(1u)), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(-28753i, 1u, 1u);
}

