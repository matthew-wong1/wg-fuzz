struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(0u, 28u, 0u), vec3<u32>(23364u, 3335u, 55326u), vec3<u32>(4294967295u, 32209u, 27250u), vec3<u32>(37734u, 2959u, 21262u), vec3<u32>(0u, 54532u, 9811u), vec3<u32>(4294967295u, 36029u, 43541u), vec3<u32>(1u, 0u, 74310u), vec3<u32>(4294967295u, 51278u, 60666u), vec3<u32>(53131u, 35844u, 90329u), vec3<u32>(1u, 10251u, 0u), vec3<u32>(0u, 35995u, 4294967295u), vec3<u32>(1u, 14225u, 4294967295u), vec3<u32>(1u, 1u, 17647u), vec3<u32>(0u, 33958u, 13542u), vec3<u32>(6971u, 0u, 17058u), vec3<u32>(4294967295u, 0u, 4910u), vec3<u32>(38745u, 35552u, 41186u), vec3<u32>(14840u, 1u, 77180u), vec3<u32>(4294967295u, 57805u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u));

var<private> global2: array<u32, 21>;

var<private> global3: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(43633u, 0u, 31851u, 0u), vec4<u32>(1u, 0u, 37078u, 0u), vec4<u32>(42049u, 1u, 1u, 67603u), vec4<u32>(1u, 0u, 58914u, 40440u));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec3<u32> {
    global2 = array<u32, 21>();
    var var_0 = _wgslsmith_add_vec3_i32(abs(abs(_wgslsmith_mod_vec3_i32(firstTrailingBit(u_input.b.wzz), u_input.b.xyw))), ~(~vec3<i32>(u_input.b.x, global0.b, global0.b)) & max(~vec3<i32>(-1i, -2131i, global0.b), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global0.b, 0i), u_input.b.zxz) >> ((global1[_wgslsmith_index_u32(global0.c.x, 20u)] | vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(81637u, 21u)], 21u)], 21u)], global0.c.x, 0u)) % vec3<u32>(32u))));
    var var_1 = Struct_5(firstTrailingBit(~vec4<u32>(1u, 4294967295u, 33054u, max(global0.c.x, 4294967295u))));
    var var_2 = -(~(-29622i)) >> (_wgslsmith_div_u32(global0.c.x, 23225u) % 32u);
    global2 = array<u32, 21>();
    return global0.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>) -> vec4<i32> {
    let var_0 = Struct_1(vec2<bool>(false, _wgslsmith_f_op_f32(arg_1.x * -161f) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x)))), -29018i, func_3(), global0.d);
    var var_1 = arg_0;
    let var_2 = abs(-(~reverseBits(vec3<i32>(var_0.b, global0.b, var_0.b) | vec3<i32>(global0.b, global0.b, u_input.a.x))));
    let var_3 = _wgslsmith_f_op_f32(trunc(var_1.x));
    var var_4 = -2147483647i;
    return vec4<i32>(_wgslsmith_mult_i32(var_2.x, var_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-27232i, abs(var_2.x)), _wgslsmith_sub_i32(global0.b, u_input.b.x & -11901i), var_0.b), -abs(~vec3<i32>(u_input.a.x, global0.b, var_0.b))), min(_wgslsmith_sub_i32(91358i, -var_0.b), ~(~var_0.b) << (16189u % 32u)), ~0i);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = vec3<f32>(762f, arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2793f), arg_0.x)));
    var var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~u_input.b | u_input.b, func_2(var_0, vec3<f32>(arg_0.x, arg_1.x, -404f)) >> (~global3[_wgslsmith_index_u32(global0.c.x, 4u)] % vec4<u32>(32u))), u_input.b) & u_input.b;
    let var_2 = select(select(select(!(!vec3<bool>(global0.a.x, true, global0.a.x)), select(select(vec3<bool>(false, true, global0.d), vec3<bool>(global0.a.x, true, global0.d), false), vec3<bool>(global0.a.x, false, true), vec3<bool>(global0.d, false, false)), var_0.x == _wgslsmith_f_op_f32(-arg_1.x)), !(!(!vec3<bool>(true, true, global0.d))), !any(!vec4<bool>(true, global0.a.x, false, global0.d))), vec3<bool>(global0.a.x, false, global0.a.x), false);
    let var_3 = vec2<i32>(_wgslsmith_clamp_i32(77933i, global0.b, -2392i), var_1.x);
    var_1 = vec4<i32>(48247i, abs(max(-1563i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 33089i, 22065i, 1i), vec4<i32>(u_input.b.x, -1i, var_3.x, -2147483647i), u_input.b), select(u_input.b, u_input.b, true)))), var_1.x, _wgslsmith_sub_i32(-22219i, 72941i));
    return Struct_2(vec2<i32>(abs(-2147483647i << (global0.c.x % 32u)), -11380i), global2[_wgslsmith_index_u32(max(~global2[_wgslsmith_index_u32(global0.c.x, 21u)], 48856u), 21u)], !global0.a);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_4) -> StorageBuffer {
    let var_0 = ~max(~(~global2[_wgslsmith_index_u32(0u, 21u)]), countOneBits(func_1(vec2<f32>(arg_3.d, arg_3.a), vec2<f32>(1000f, -362f)).b)) <= min(select(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_1.b, 24329u), abs(arg_3.b.b)), 1u >> (_wgslsmith_clamp_u32(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 21u)], 1u) % 32u), !func_1(vec2<f32>(arg_3.a, arg_3.d), vec2<f32>(-111f, -1000f)).c.x), firstTrailingBit(arg_2.x));
    let var_1 = arg_2.x;
    global1 = array<vec3<u32>, 20>();
    global2 = array<u32, 21>();
    global2 = array<u32, 21>();
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)) + _wgslsmith_f_op_f32(-143f - _wgslsmith_f_op_f32(-arg_3.d))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-468f + 1087f), _wgslsmith_f_op_f32(arg_3.d + -1382f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_f_op_f32(-arg_3.d)))), ~(~abs(~global1[_wgslsmith_index_u32(0u, 20u)])), ~(~(~(~4294967295u))), countOneBits(u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec2<u32>(51823u, ~max(global0.c.x, 1u)), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1048f, 1991f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(286f, 1533f)))), countOneBits(global1[_wgslsmith_index_u32(~select(13006u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(1u, 21u)], global0.c.x), false), 20u)]), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(480f)) * -1898f)), Struct_2(countOneBits(u_input.b.yy), ~14571u, global0.a), any(vec2<bool>(select(false, global0.a.x, global0.d), all(vec3<bool>(global0.a.x, global0.a.x, global0.a.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2540f, -2483f)), -710f)))));
}

