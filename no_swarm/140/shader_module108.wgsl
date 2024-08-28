struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(true, false), -227f, vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), Struct_1(-579f, vec4<u32>(63812u, 17447u, 4294967295u, 1u)));

var<private> global1: array<vec2<f32>, 24>;

var<private> global2: i32;

var<private> global3: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<bool> {
    global2 = _wgslsmith_mod_i32(1i, -_wgslsmith_clamp_i32(1i, min(_wgslsmith_add_i32(-18677i, 5904i), abs(2147483647i)), -5655i));
    var var_0 = firstTrailingBit(_wgslsmith_add_i32(1i << (0u % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(-5624i, 1i, 67530i), -vec3<i32>(-34155i, 2147483647i, 0i)) >> (~global0.e.b.x % 32u)));
    var var_1 = Struct_2(!vec2<bool>(any(global3[_wgslsmith_index_u32(72042u, 5u)]) | global0.a.x, true), _wgslsmith_f_op_f32(min(974f, global0.b)), u_input.a.xy, ~(~global0.e.b.zx), global0.e);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-var_1.e.a), _wgslsmith_f_op_f32(global0.e.a - var_1.e.a), _wgslsmith_f_op_f32(min(var_1.e.a, global0.e.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1075f, var_1.b, var_1.e.a, -815f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.e.a, -199f, global0.b))))));
    let var_3 = firstTrailingBit(abs(-vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -51847i), vec3<i32>(-2147483647i, 23516i, -69898i)), _wgslsmith_mult_i32(-1i, 74325i), ~(-22527i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(-10411i, -1i, -37956i)))));
    return select(select(var_1.a, vec2<bool>(global0.a.x, var_1.a.x), !select(!var_1.a.x, select(global0.a.x, var_1.a.x, var_1.a.x), global0.a.x)), !global0.a, var_1.a.x);
}

fn func_2() -> Struct_2 {
    global3 = array<vec3<bool>, 5>();
    global2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-33989i, -97669i, 1i), vec3<i32>(-43704i, -29666i, -18380i)), _wgslsmith_add_i32(~(-950i), -1i)), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, 9538i), -39794i), -(~0i))), -10647i);
    global2 = -(~(-1278i));
    let var_0 = abs(vec2<i32>(2147483647i, _wgslsmith_mod_i32(select(~11452i, i32(-1i) * -12307i, true), _wgslsmith_dot_vec2_i32(-vec2<i32>(10326i, 1i), ~vec2<i32>(-6586i, 40086i)))));
    let var_1 = global0.a.x;
    return Struct_2(select(global0.a, select(func_3(), !global0.a, vec2<bool>(!global0.a.x, global0.a.x)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(global0.e.a + global0.e.a)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b - global0.e.a), -341f))))), vec2<u32>(1u, _wgslsmith_mult_u32(countOneBits(4294967295u), 17150u)), u_input.a.zy, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.a)), vec4<u32>(_wgslsmith_mult_u32(0u, ~u_input.a.x), global0.e.b.x, abs(~4771u), ~u_input.b)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = func_2();
    let var_0 = func_2();
    let var_1 = 2488i;
    let var_2 = var_0;
    global1 = array<vec2<f32>, 24>();
    return global0.e;
}

fn func_4(arg_0: Struct_2) -> bool {
    global0 = arg_0;
    var var_0 = vec3<bool>(false, false, (func_2().b >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -876f)))) & false);
    let var_1 = arg_0.e.b;
    global3 = array<vec3<bool>, 5>();
    return all(!vec2<bool>(arg_0.a.x, false));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> StorageBuffer {
    var var_0 = arg_1;
    global2 = arg_2;
    var var_1 = Struct_2(var_0.a, 644f, _wgslsmith_mult_vec2_u32(max(~(vec2<u32>(1u, 150960u) << (vec2<u32>(var_0.d.x, 4294967295u) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_div_u32(global0.d.x, 0u), func_2().d.x)), _wgslsmith_clamp_vec2_u32(~global0.d, global0.e.b.yz, vec2<u32>(global0.e.b.x, firstTrailingBit(38617u)))), ~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.c.x, arg_1.c.x), vec2<u32>(global0.c.x, 27556u), vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(4294967295u, u_input.b)), select(var_0.e.b.ww, u_input.a.zy & vec2<u32>(44660u, u_input.a.x), true)), Struct_1(-1000f, vec4<u32>(arg_1.e.b.x, ~abs(7873u), 11022u, ~countOneBits(global0.d.x))));
    global3 = array<vec3<bool>, 5>();
    let var_2 = vec3<u32>(~(global0.d.x & arg_1.e.b.x) ^ ~4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(global0.e.b, ~arg_1.e.b), _wgslsmith_mod_u32(firstTrailingBit(43856u), 21142u)), global0.e.b.x) ^ ~firstTrailingBit(~(arg_1.e.b.xyz ^ var_0.e.b.zzy));
    return StorageBuffer(arg_1.c, vec2<i32>(arg_2, 40705i), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.a, global0.b, global0.e.a)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b))), firstLeadingBit(vec4<u32>(firstLeadingBit(1u), _wgslsmith_div_u32(global0.e.b.x, 24026u), ~0u, ~6277u)) << (~vec4<u32>(u_input.b, 1u, 0u, u_input.a.x) % vec4<u32>(32u)));
    var var_2 = vec2<u32>(reverseBits(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, 86692u), 36880u, _wgslsmith_mod_u32(global0.d.x, 1u) ^ u_input.a.x)), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.b.x, var_1.b.x), countOneBits(abs(92097u))));
    var var_3 = ~(~vec2<u32>(countOneBits(global0.c.x), _wgslsmith_dot_vec4_u32(~var_1.b, vec4<u32>(u_input.b, u_input.b, u_input.a.x, 46573u))));
    global1 = array<vec2<f32>, 24>();
    let x = u_input.a;
    s_output = func_5(!func_4(Struct_2(!vec2<bool>(global0.a.x, global0.a.x), var_0.x, var_1.b.zx, ~vec2<u32>(40551u, global0.d.x), func_1(0u))), func_2(), _wgslsmith_dot_vec2_i32(vec2<i32>(-9628i, 3253i), vec2<i32>(firstTrailingBit(75097i), ~firstLeadingBit(-24411i))));
}

