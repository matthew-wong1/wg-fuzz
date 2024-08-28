struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global1: vec4<i32> = vec4<i32>(1i, -20246i, -1i, -6315i);

var<private> global2: array<Struct_2, 22>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1() -> Struct_1 {
    global1 = vec4<i32>(countOneBits(~(-u_input.b.x)), -1i, u_input.b.x, u_input.b.x);
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-606f, 370f) * _wgslsmith_f_op_f32(f32(-1f) * -2294f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -606f)))))));
    return Struct_1(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x | u_input.a.x, 46357u), u_input.a.x));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 22u)];
    let var_1 = select(global0.xww, global0.xxw, any(global0.zx));
    var var_2 = u_input.a.x;
    global2 = array<Struct_2, 22>();
    var var_3 = global2[_wgslsmith_index_u32(17529u, 22u)];
    return min(u_input.a.x, var_3.a.a);
}

fn func_2() -> bool {
    let var_0 = Struct_1(~(~_wgslsmith_clamp_u32(func_3(-268f), u_input.a.x ^ u_input.a.x, 0u)));
    global2 = array<Struct_2, 22>();
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<f32>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = vec3<bool>(1u >= u_input.a.x, !all(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(arg_0.x, global0.x, global0.x), select(vec3<bool>(arg_3.x, global0.x, arg_0.x), arg_0, arg_3.x))), all(!vec3<bool>(!arg_3.x, arg_3.x, false)));
    let var_1 = global2[_wgslsmith_index_u32(~(~(~_wgslsmith_add_u32(u_input.a.x ^ u_input.a.x, 75972u))), 22u)];
    global2 = array<Struct_2, 22>();
    var var_2 = var_1.a;
    let var_3 = vec3<i32>(-43862i, ~u_input.b.x, u_input.b.x);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstTrailingBit(_wgslsmith_mult_vec4_i32(-vec4<i32>(~u_input.b.x, abs(-1i), _wgslsmith_div_i32(-1i, 1i), 43792i), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b.x, u_input.b.x, 15230i, -23679i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, global1.x, u_input.b.x), vec4<i32>(1i, 0i, 24533i, -29498i)), vec4<i32>(global1.x, -52003i, global1.x, u_input.b.x)) & vec4<i32>(abs(1i), -28409i, ~18737i, countOneBits(2147483647i))));
    let var_0 = select(~(~_wgslsmith_sub_vec2_u32(u_input.a.yx, u_input.a.yy << (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(3160u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 39393u, 1u), u_input.a)), select(u_input.a.xw, _wgslsmith_mod_vec2_u32(vec2<u32>(100789u, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 95256u), vec2<u32>(u_input.a.x, 0u))), !vec2<bool>(global0.x, global0.x)), ~(~vec2<u32>(49023u, 0u))), !(!select(!global0.zy, select(vec2<bool>(true, true), global0.xy, false), false)));
    let var_1 = _wgslsmith_mult_i32(1i, 2147483647i);
    let var_2 = func_1();
    let var_3 = reverseBits(u_input.b);
    let var_4 = func_4(select(vec3<bool>(true, false, select(global0.x, !global0.x, !global0.x)), vec3<bool>(true, func_2() & global0.x, all(!global0.yz)), global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -197f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1445f - -217f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1915f, -538f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1866f, 490f) * vec2<f32>(-170f, -1151f)))))), !select(!select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x), vec4<bool>(var_1 <= var_1, any(vec3<bool>(false, false, global0.x)), false, true), select(select(vec4<bool>(true, true, global0.x, true), vec4<bool>(global0.x, global0.x, true, global0.x), global0.x), select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, false, global0.x, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-488f, _wgslsmith_f_op_f32(trunc(1f)), -1940f)), _wgslsmith_mod_vec4_i32(-select(vec4<i32>(global1.x, var_1, 2147483647i, -16518i), ~vec4<i32>(var_3.x, -49766i, -2147483647i, var_3.x), false), vec4<i32>(_wgslsmith_mod_i32(var_3.x, min(u_input.b.x, -24211i)), -2147483647i, u_input.b.x, var_1)), var_1, ~_wgslsmith_mod_vec3_u32((u_input.a.zxw >> (u_input.a.xxx % vec3<u32>(32u))) << (~vec3<u32>(0u, 4294967295u, var_2.a) % vec3<u32>(32u)), abs(~vec3<u32>(4294967295u, 3780u, u_input.a.x))));
}

