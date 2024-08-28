struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 19>;

var<private> global2: vec4<f32>;

var<private> global3: array<i32, 19> = array<i32, 19>(-9627i, 2147483647i, 2147483647i, 1i, i32(-2147483648), 0i, -22459i, 2147483647i, 26710i, -21907i, -34143i, -29325i, -1i, 44910i, i32(-2147483648), 73267i, 17034i, 43615i, 1i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    global1 = array<Struct_1, 19>();
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(313f * -1618f) + _wgslsmith_f_op_f32(-global2.x)), -387f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.x * 315f))), 416f)) * vec4<f32>(global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(598f, -427f))), -2016f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1259f)) - 426f)), 743f));
    var var_0 = Struct_2(abs(_wgslsmith_dot_vec4_i32(-select(vec4<i32>(u_input.b, 2147483647i, 1i, -14195i), vec4<i32>(27680i, u_input.b, arg_0.x, global3[_wgslsmith_index_u32(u_input.d.x, 19u)]), true), select(vec4<i32>(-43901i, arg_0.x, 2147483647i, arg_0.x), vec4<i32>(arg_0.x, -11510i, -2147483647i, -41125i), vec4<bool>(false, true, false, true)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.d.x, 19u)], 11557i, -2147483647i, global3[_wgslsmith_index_u32(u_input.c, 19u)]), vec4<i32>(19633i, u_input.b, 1i, 70925i), vec4<i32>(-25587i, global3[_wgslsmith_index_u32(1u, 19u)], -47162i, arg_0.x)))), global2.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global2.x, global2.x)), _wgslsmith_f_op_f32(min(global2.x, -925f)))), _wgslsmith_f_op_f32(max(global2.x, -1000f))), _wgslsmith_div_f32(global2.x, -320f), false)), all(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), true)), Struct_1(_wgslsmith_f_op_f32(sign(786f))));
    let var_1 = Struct_1(-1006f);
    var var_2 = max(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 19u)], _wgslsmith_add_i32(var_0.a, -(~arg_0.x)), -58522i), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.c, 19u)], 13838i, -30281i, -32569i) | vec4<i32>(1i, arg_0.x, 1i, -1i), abs(vec4<i32>(14484i, 2147483647i, -2147483647i, u_input.b))), vec4<i32>(_wgslsmith_mod_i32(var_0.a, 39297i), 37834i, global3[_wgslsmith_index_u32(u_input.a, 19u)], _wgslsmith_clamp_i32(64838i, arg_0.x, var_0.a))), ~(~(-45324i)), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(10792i, 2147483647i, var_0.a, -17074i), vec4<i32>(2291i, arg_0.x, var_0.a, -2147483647i)) >> (abs(0u) % 32u))));
    return -1i;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> Struct_2 {
    return Struct_2(func_3(vec3<i32>(_wgslsmith_add_i32(-u_input.b, ~u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, global3[_wgslsmith_index_u32(u_input.a, 19u)], -36864i), vec3<i32>(u_input.b, global3[_wgslsmith_index_u32(arg_1, 19u)], 1i)), 2147483647i)), -1040f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global2.x)))))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true))), Struct_1(global2.x));
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = u_input.c & ~(~(~reverseBits(0u)));
    global1 = array<Struct_1, 19>();
    var var_1 = func_2(_wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 18416u, var_0, var_0), vec4<u32>(var_0, var_0, u_input.a, var_0)), min(vec4<u32>(countOneBits(53654u), ~87980u, u_input.e.x & 2283u, 6525u), min(vec4<u32>(var_0, var_0, 1698u, u_input.a), vec4<u32>(var_0, 4294967295u, var_0, 8260u)) & vec4<u32>(var_0, 0u, u_input.d.x, 19122u)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.d.xy, u_input.d.yz), countOneBits(13185u), ~_wgslsmith_add_u32(u_input.e.x, u_input.e.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.d.x, 11108u) >> (vec4<u32>(0u, var_0, u_input.c, var_0) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, u_input.e.x, 4294967295u, 1u)))), u_input.d.x);
    let var_2 = Struct_2(firstTrailingBit(var_1.a), var_1.c, global2.x, 179f >= arg_0, global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(countOneBits(33351u), var_0 ^ 18753u)), 19u)]);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(109f, _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - var_2.b) + _wgslsmith_f_op_f32(ceil(var_2.b)))) * _wgslsmith_f_op_f32(-arg_0)), arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.e.a))));
    return all(select(vec2<bool>(all(vec3<bool>(var_2.d, var_2.d, var_2.d)) & (true | var_1.d), true), vec2<bool>(true, !all(vec2<bool>(true, var_1.d))), all(vec4<bool>(var_1.d, false, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global1 = array<Struct_1, 19>();
    global0 = all(vec4<bool>(true, any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), false)) & true;
    global0 = select(any(vec4<bool>(false, true, any(vec4<bool>(true, true, true, true)), !func_1(-1197f))), true, ~_wgslsmith_clamp_i32(var_0 >> (u_input.d.x % 32u), global3[_wgslsmith_index_u32(countOneBits(u_input.e.x), 19u)], _wgslsmith_sub_i32(u_input.b, -13830i)) == func_2(select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, u_input.a, 4294967295u), vec4<u32>(4294967295u, 9998u, u_input.c, 45763u)), select(vec4<u32>(0u, 4294967295u, u_input.d.x, 1u), vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.d.x), true), vec4<bool>(true, true, true, true)), u_input.e.x).a);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, global2.x, 1153f, global2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-106f, 792f, global2.x, -724f) + vec4<f32>(global2.x, global2.x, -198f, 472f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(983f, 158f, global2.x, -457f) + vec4<f32>(760f, 1486f, global2.x, 508f)), _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 1260f, 711f, -205f), vec4<f32>(-650f, -839f, 804f, global2.x))))));
    var var_1 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(u_input.e.x >> (u_input.d.x % 32u)), abs(~42145u)) << (reverseBits(u_input.e.x) % 32u), 19u)], 1839f, _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), true)))), select(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), true), global1[_wgslsmith_index_u32(33703u, 19u)]);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.a, 350f, -1992f, 744f) + vec4<f32>(-507f, 1307f, global2.x, -359f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, global2.x, global2.x, 492f))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.d.zx & _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), min(u_input.d.yy, u_input.d.xz), vec2<u32>(u_input.a, 28936u))), ~_wgslsmith_mult_i32(_wgslsmith_div_i32(select(var_0, var_1.a, var_1.d), ~u_input.b), _wgslsmith_clamp_i32(2147483647i, 1i, ~2147483647i)), ~countOneBits((29984i ^ u_input.b) | abs(var_1.a)));
}

