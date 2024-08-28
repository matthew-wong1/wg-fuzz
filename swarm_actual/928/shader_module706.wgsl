struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(true, vec2<bool>(true, false), -1i, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(false, true), -29969i, vec2<bool>(false, false)), Struct_1(true, vec2<bool>(false, true), -1i, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(false, false), 23923i, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(false, false), 32498i, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(true, false), 2147483647i, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(false, false), 15745i, vec2<bool>(false, true)), Struct_1(false, vec2<bool>(false, false), 36327i, vec2<bool>(true, false)), Struct_1(false, vec2<bool>(false, false), -1i, vec2<bool>(true, false)));

var<private> global1: Struct_1;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(true, vec2<bool>(true, true), 0i, vec2<bool>(true, true)), Struct_1(false, vec2<bool>(true, false), 1i, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(true, false), 6738i, vec2<bool>(false, false)), Struct_1(false, vec2<bool>(false, true), -32042i, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(false, false), 11704i, vec2<bool>(false, false)), Struct_1(true, vec2<bool>(true, true), -17077i, vec2<bool>(true, true)), Struct_1(false, vec2<bool>(false, true), 2147483647i, vec2<bool>(true, true)), Struct_1(false, vec2<bool>(false, false), -1i, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(false, true), 435i, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(true, false), 4634i, vec2<bool>(false, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = 1u;
    global2 = ~vec3<i32>(-2147483647i, -8632i & global2.x, _wgslsmith_dot_vec4_i32(max(vec4<i32>(global2.x, 5593i, global1.c, global1.c) & vec4<i32>(global2.x, 2147483647i, global2.x, global1.c), vec4<i32>(-1i, global1.c, 1i, global2.x)), -vec4<i32>(global1.c, arg_1.c, 1i, global1.c) << (~vec4<u32>(u_input.d.x, 4294967295u, 31205u, u_input.c.x) % vec4<u32>(32u))));
    var var_1 = vec2<f32>(-199f, -244f);
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(138f, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + -884f))))));
    return ~(~u_input.b);
}

fn func_3(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~(~firstLeadingBit(1u) << (u_input.b % 32u)), 9u)];
    var var_1 = vec3<i32>(global2.x, _wgslsmith_dot_vec4_i32(-firstTrailingBit(vec4<i32>(0i, global2.x, global2.x, 1i)), firstTrailingBit(-min(vec4<i32>(var_0.c, 1i, var_0.c, global1.c), vec4<i32>(var_0.c, -1i, var_0.c, var_0.c)))), _wgslsmith_mult_i32(global1.c, -abs(1i) | global2.x));
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~97980u, max(~abs(0u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d, u_input.d), countOneBits(u_input.d))), ~(~u_input.c.x)), 60986u), 10u)];
    let var_3 = _wgslsmith_add_u32((arg_0 | (~u_input.d.x >> (u_input.b % 32u))) | _wgslsmith_add_u32(_wgslsmith_mult_u32(abs(u_input.d.x), arg_0 >> (4294967295u % 32u)), 1u), arg_1);
    var_0 = global0[_wgslsmith_index_u32(4294967295u, 9u)];
    return Struct_1(any(vec4<bool>(!(!var_0.a), select(all(vec3<bool>(global1.b.x, var_2.d.x, true)), global1.d.x, true), all(vec4<bool>(false, true, var_0.b.x, true)), any(select(vec3<bool>(false, global1.d.x, global1.a), vec3<bool>(global1.d.x, var_0.d.x, global1.a), global1.a)))), var_2.b, abs(-30354i), vec2<bool>(true, var_2.a));
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = func_3(_wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 48438u | u_input.b, 0u, 4294967295u), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.c.x), ~0u, ~u_input.a.x, 1u)), ~firstTrailingBit(vec4<u32>(61467u, 5832u, u_input.a.x, 4294967295u))), select(firstTrailingBit(func_2(vec2<bool>(true, false), Struct_1(global1.d.x, global1.d, global1.c, global1.b), true)), _wgslsmith_dot_vec3_u32(~vec3<u32>(27239u, 13979u, 1u), vec3<u32>(~u_input.b, u_input.c.x, _wgslsmith_mult_u32(u_input.b, u_input.a.x))), true));
    let var_1 = 1u;
    global2 = ~(~firstLeadingBit(max(-vec3<i32>(0i, global1.c, 22029i), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global1.c, -18853i), vec3<i32>(6156i, 1i, global2.x)))));
    global0 = array<Struct_1, 9>();
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(max(var_1, 64825u), var_1), 10u)];
    return 3114i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~u_input.a.x, 9u)];
    global0 = array<Struct_1, 9>();
    var var_1 = Struct_1(true, !var_0.d, var_0.c, var_0.b);
    let var_2 = global0[_wgslsmith_index_u32(~1u, 9u)];
    let var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(select(select(select(1i, -1i, var_2.d.x), func_1(510f), any(vec2<bool>(false, var_2.d.x))), -12828i, false), ~var_1.c, 1i), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global2.x, -48404i) | _wgslsmith_mult_vec3_i32(vec3<i32>(51217i, global1.c, global2.x), vec3<i32>(36286i, -1i, var_2.c)), reverseBits(~vec3<i32>(57635i, global2.x, 0i))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 7777i, global2.x, global1.c), vec4<i32>(0i, global1.c, global2.x, var_2.c)) >> (u_input.c.x % 32u), var_0.c >> (4294967295u % 32u), i32(-1i) * -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(-4980i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(-244f)), _wgslsmith_f_op_f32(trunc(-585f)), 871f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(996f, 1316f, 1772f) + vec3<f32>(-1132f, 228f, -1635f))), vec3<f32>(_wgslsmith_f_op_f32(abs(-104f)), _wgslsmith_f_op_f32(trunc(-252f)), _wgslsmith_f_op_f32(select(219f, 964f, global1.d.x)))), !any(!vec3<bool>(var_2.b.x, false, var_0.a)))), var_3, ~(~(~(~u_input.b))));
}

