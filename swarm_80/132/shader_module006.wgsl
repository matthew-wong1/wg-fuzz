struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(72473u, 4294967295u, 71348u), vec3<u32>(0u, 6145u, 4294967295u), vec3<u32>(30676u, 1u, 4294967295u), vec3<u32>(0u, 1u, 45077u), vec3<u32>(4294967295u, 1u, 807u), vec3<u32>(58167u, 137974u, 54729u), vec3<u32>(4294967295u, 1u, 20519u), vec3<u32>(28364u, 62810u, 49793u), vec3<u32>(1u, 30293u, 0u), vec3<u32>(36899u, 0u, 1u), vec3<u32>(36248u, 4294967295u, 37025u), vec3<u32>(8494u, 0u, 42292u), vec3<u32>(4294967295u, 11263u, 1u), vec3<u32>(1u, 4294967295u, 25235u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, 0u, 14660u), vec3<u32>(0u, 1u, 53414u), vec3<u32>(25819u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 27809u, 9812u), vec3<u32>(4294967295u, 4294967295u, 44804u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(59569u, 63729u, 0u), vec3<u32>(31340u, 1u, 9526u), vec3<u32>(4294967295u, 27657u, 50802u));

var<private> global1: Struct_1;

var<private> global2: vec3<f32>;

var<private> global3: vec2<f32> = vec2<f32>(431f, 1318f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    let var_0 = !(!(!select(!vec4<bool>(global1.a, global1.a, global1.a, global1.a), select(vec4<bool>(global1.a, global1.a, true, global1.a), vec4<bool>(global1.a, false, global1.a, true), vec4<bool>(global1.a, false, global1.a, global1.a)), !vec4<bool>(global1.a, true, global1.a, false))));
    let var_1 = Struct_1(!var_0.x, global1.b, 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1211f)), global1.b.x, all(!vec3<bool>(global1.a, true, global1.a)))) - global1.d), select(~(~vec2<i32>(u_input.b, u_input.b)), vec2<i32>(1i << ((global1.c << (global1.c % 32u)) % 32u), countOneBits(-global1.e.x)), !any(vec3<bool>(false, global1.a, false))));
    let var_2 = select(vec3<bool>(!global1.a, any(!(!var_0.xy)), true), !vec3<bool>(all(select(var_0.ww, vec2<bool>(var_0.x, false), var_1.a)), true, false), -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 11689i), global1.e), -var_1.e.x) > _wgslsmith_mod_i32(-max(global1.e.x, var_1.e.x), var_1.e.x));
    let var_3 = var_1;
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1141f, _wgslsmith_f_op_f32(509f + global2.x))))) + vec2<f32>(-223f, var_1.d));
    return _wgslsmith_mult_vec2_i32(vec2<i32>(max(_wgslsmith_add_i32(firstLeadingBit(var_3.e.x), var_1.e.x), ~(~(-1i))), _wgslsmith_div_i32(u_input.b, _wgslsmith_add_i32(global1.e.x, var_3.e.x) & ~u_input.b)), ~_wgslsmith_sub_vec2_i32(select(vec2<i32>(5745i, -1i), var_1.e, !var_0.x), vec2<i32>(var_3.e.x, 2147483647i) << (firstTrailingBit(vec2<u32>(1u, global1.c)) % vec2<u32>(32u))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(global2.yy + vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(min(-1334f, -220f)), !global1.a)) + -825f)));
    var var_1 = ~(~vec2<u32>(global1.c, firstLeadingBit(global1.c)));
    let var_2 = Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.b * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(global1.b, global1.b, vec4<bool>(false, false, false, true))))))), ~21125u, -425f, func_3());
    var var_3 = -1839f;
    let var_4 = _wgslsmith_mult_u32(countOneBits(var_1.x), 1u);
    return var_2.e.x;
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_1(-(func_2() << (_wgslsmith_clamp_u32(global1.c, global1.c, global1.c) % 32u)) <= ~_wgslsmith_div_i32(-67374i, global1.e.x), _wgslsmith_f_op_vec4_f32(-global1.b), firstLeadingBit(min(global1.c, min(global1.c, 28692u) & global1.c)), global2.x, vec2<i32>(func_3().x, 27775i));
    var var_1 = _wgslsmith_dot_vec2_i32(~(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(14492i, global1.e.x), var_0.e)) | (global1.e >> (firstTrailingBit(vec2<u32>(global1.c, global1.c)) % vec2<u32>(32u)))), vec2<i32>(-1i) * -var_0.e);
    let var_2 = global1.a;
    let var_3 = firstLeadingBit(-24304i);
    let var_4 = ~max(firstTrailingBit(reverseBits(select(vec4<i32>(-2147483647i, -1i, 0i, var_0.e.x), vec4<i32>(20860i, var_3, var_0.e.x, global1.e.x), vec4<bool>(global1.a, global1.a, false, false)))), ~vec4<i32>(u_input.a, var_3 ^ -2147483647i, 0i, global1.e.x));
    return _wgslsmith_div_vec2_i32(-vec2<i32>(var_3, -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e.x, 14561i, -1i), vec3<i32>(-22762i, -37506i, var_3))), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(func_3(), vec2<i32>(countOneBits(45210i), func_3().x)), var_4.yw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.a, global1.b, 1u, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d), -1000f), _wgslsmith_f_op_f32(-1386f * _wgslsmith_f_op_f32(-1303f + -1000f))))), func_1());
    var var_1 = 2226f;
    var var_2 = min(_wgslsmith_add_vec4_i32(vec4<i32>(~(var_0.e.x & 1i), var_0.e.x, 1i, 6798i), _wgslsmith_add_vec4_i32(abs(vec4<i32>(var_0.e.x, global1.e.x, 62091i, 2147483647i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(global1.e.x, -21558i, 1i, u_input.b), vec4<i32>(2147483647i, -2147483647i, -26120i, -35990i)))), _wgslsmith_mult_vec4_i32(select(~vec4<i32>(-39294i, -13864i, global1.e.x, global1.e.x), vec4<i32>(-5780i, global1.e.x, global1.e.x, 5056i), all(vec4<bool>(true, true, false, global1.a))) | countOneBits(~vec4<i32>(-7539i, global1.e.x, u_input.b, global1.e.x)), abs(~(-vec4<i32>(18329i, 34188i, 13935i, var_0.e.x)))));
    var_2 = select(min(vec4<i32>(u_input.b << (var_0.c % 32u), max(-2147483647i, -2147483647i), ~var_2.x, select(var_2.x, 15845i, var_0.a)) << (~vec4<u32>(13087u, var_0.c, 30876u, 13662u) % vec4<u32>(32u)), vec4<i32>(26538i, (2147483647i << (var_0.c % 32u)) | ~(-1i), -4589i, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_0.e.x), var_2.zy))), -(~(~select(vec4<i32>(u_input.a, var_0.e.x, global1.e.x, -2147483647i), vec4<i32>(u_input.a, -36000i, 32545i, var_2.x), false))), !vec4<bool>(global1.a, global1.a, !global1.a || false, firstLeadingBit(var_0.c) == (1u & var_0.c)));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.yy)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2276f, 169f), vec2<f32>(483f, global1.d)))) - global1.b.xw));
    let var_3 = true;
    let var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-664f);
}

