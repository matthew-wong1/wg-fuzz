struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: Struct_3,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3 = Struct_3(true);

var<private> global2: array<Struct_1, 28>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> u32 {
    var var_0 = !vec3<bool>(true, false, !all(!vec4<bool>(true, global1.a, true, false)));
    global1 = Struct_3(false);
    return select(~u_input.e, firstTrailingBit(reverseBits(~u_input.c.x)), true);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>) -> Struct_2 {
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(684f * -1000f))), ~max(arg_1.x & 62101u, 0u)), global1.a & true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.ww, vec2<u32>(abs(firstLeadingBit(arg_1.x)), select(select(1u, 1u, false), 31131u, any(vec3<bool>(false, global1.a, global1.a))))), 28u)], _wgslsmith_sub_vec4_i32(~(-reverseBits(arg_0)), u_input.a | u_input.a), vec3<bool>(global1.a, true && (_wgslsmith_div_i32(-74404i, 9354i) <= u_input.a.x), global1.a));
}

fn func_1(arg_0: f32) -> Struct_4 {
    var var_0 = false;
    var var_1 = func_3(vec4<i32>(_wgslsmith_dot_vec4_i32(~(u_input.a << (vec4<u32>(u_input.c.x, u_input.e, 0u, 0u) % vec4<u32>(32u))), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)), 2147483647i >> (_wgslsmith_div_u32(77123u, func_2()) % 32u), -(~u_input.a.x), ~0i), reverseBits(vec2<u32>(1u, u_input.c.x)));
    let var_2 = arg_0;
    var_0 = true;
    let var_3 = 760f;
    return Struct_4(true && (var_1.e.x | any(vec2<bool>(true, false))), _wgslsmith_mod_vec3_u32(reverseBits(abs(u_input.c.wyz)), u_input.d.wwz), Struct_3(-607f >= _wgslsmith_div_f32(_wgslsmith_div_f32(1307f, 575f), _wgslsmith_div_f32(var_1.c.a, arg_0))), arg_0 >= _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(-204f * -750f)), false && (u_input.a.x < ~2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(global1.a, false);
    global0 = firstTrailingBit(~u_input.c.x);
    var var_1 = true;
    var var_2 = func_1(_wgslsmith_f_op_f32(step(-256f, _wgslsmith_f_op_f32(-442f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2741f + -159f))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(178f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1335f + -632f) - _wgslsmith_f_op_f32(f32(-1f) * -1325f)) * -503f));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -750f));
    let var_4 = any(select(!vec3<bool>(all(vec3<bool>(true, var_0.x, var_2.e)), true, false), select(!vec3<bool>(true, true, var_0.x), vec3<bool>(global1.a, true, false), vec3<bool>(all(vec3<bool>(global1.a, true, true)), var_2.a, select(global1.a, true, var_0.x))), select(vec3<bool>(var_0.x, true & var_0.x, all(var_0)), !select(vec3<bool>(true, false, false), vec3<bool>(var_2.a, false, global1.a), vec3<bool>(var_0.x, false, false)), vec3<bool>(all(vec4<bool>(true, global1.a, false, global1.a)), !global1.a, any(vec2<bool>(true, true))))));
    var var_5 = select(reverseBits(-firstTrailingBit(vec3<i32>(u_input.a.x, -6547i, -1i))), _wgslsmith_clamp_vec3_i32(~(vec3<i32>(-9434i, u_input.a.x, u_input.a.x) & u_input.a.xxy), _wgslsmith_mod_vec3_i32(min(_wgslsmith_add_vec3_i32(vec3<i32>(32376i, 19376i, -1i), vec3<i32>(-2147483647i, -29222i, u_input.a.x)), reverseBits(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -1191i, u_input.a.x), ~u_input.a.xwy)), -(vec3<i32>(-1i) * -u_input.a.xxz)), any(vec2<bool>(select(false, var_0.x, true), any(vec2<bool>(true, global1.a)))) & (((false & var_4) | true) == var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(564f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(297f, -497f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -953f), 40326i, ~(_wgslsmith_sub_u32(func_1(-2000f).b.x, var_2.b.x) >> (var_2.b.x % 32u)), vec4<i32>(abs(-30177i), var_5.x, abs(u_input.a.x), -2147483647i));
}

