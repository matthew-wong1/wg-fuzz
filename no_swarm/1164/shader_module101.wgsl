struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, i32(-2147483648), 27227i, -28353i);

var<private> global1: Struct_1;

var<private> global2: vec3<u32> = vec3<u32>(0u, 13608u, 0u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = vec2<bool>(all(vec4<bool>(false, true, countOneBits(global0.x) != u_input.a.x, true | all(vec4<bool>(true, true, true, false)))), -396f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-447f, _wgslsmith_f_op_f32(floor(1047f)))) * 1f));
    var var_1 = Struct_1(global1.a);
    global2 = ~(~vec3<u32>(arg_0, u_input.b.x, 0u));
    var var_2 = Struct_1(vec2<i32>(global0.x, abs(1i)));
    global1 = Struct_1(~(global0.ww << (global2.zz % vec2<u32>(32u))));
    return countOneBits(global0.x);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-342f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1313f) + 586f))));
    let var_1 = Struct_1(vec2<i32>(~global0.x & func_3(0u), u_input.a.x));
    global0 = _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_dot_vec4_i32(-countOneBits(u_input.a), u_input.a << (vec4<u32>(0u, 40658u, 0u, u_input.b.x) % vec4<u32>(32u))), -1i, u_input.a.x, ~1i), ~abs(firstLeadingBit(u_input.a)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -863f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1659f, 130f))))));
    var var_3 = 34368u;
    return Struct_1(global1.a);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_mult_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, global2.x, global2.x), vec3<u32>(0u, global2.x, global2.x)), abs(vec3<u32>(38620u, global2.x, global2.x)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))) | ~(~vec3<u32>(global2.x, 1u, global2.x)), vec3<u32>(~firstTrailingBit(u_input.b.x), reverseBits(u_input.b.x), ~5795u)) & ~vec3<u32>(~countOneBits(global2.x), _wgslsmith_div_u32(21143u, _wgslsmith_div_u32(0u, u_input.b.x)), u_input.b.x);
    global0 = u_input.a;
    var_0 = countOneBits(vec3<u32>(abs(u_input.b.x), ~countOneBits(u_input.b.x), _wgslsmith_mod_u32(1u, global2.x)));
    var var_1 = vec2<bool>(true, true);
    global1 = Struct_1(firstTrailingBit(vec2<i32>(global1.a.x, -2147483647i)));
    return u_input.a.zww;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: f32) -> vec4<bool> {
    let var_0 = ~6654u;
    let var_1 = arg_0;
    global2 = (vec3<u32>(~_wgslsmith_clamp_u32(global2.x, var_0, var_0), 1u, 52177u) >> (~reverseBits(vec3<u32>(var_0, 4294967295u, 48733u) << (vec3<u32>(67335u, 1u, var_0) % vec3<u32>(32u))) % vec3<u32>(32u))) | _wgslsmith_div_vec3_u32(abs(min(reverseBits(vec3<u32>(0u, 73109u, var_0)), vec3<u32>(0u, 24000u, u_input.b.x))), min(_wgslsmith_mult_vec3_u32(~vec3<u32>(13070u, u_input.b.x, global2.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(58164u, 97641u, 24729u), vec3<u32>(7832u, var_0, global2.x), vec3<u32>(1u, u_input.b.x, var_0))), ~abs(vec3<u32>(var_0, 5232u, u_input.b.x))));
    global1 = func_2();
    var var_2 = Struct_1(min(abs(u_input.a.zw), ~_wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.a.x) & vec2<i32>(u_input.a.x, -63468i), ~vec2<i32>(u_input.a.x, -9993i))));
    return vec4<bool>(any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), any(!vec3<bool>(select(false, true, true), false, true)), true, true);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> StorageBuffer {
    let var_0 = !func_5(arg_2, abs(func_4(_wgslsmith_add_vec2_i32(vec2<i32>(22751i, global0.x), vec2<i32>(arg_0.a.x, u_input.a.x)), func_2(), Struct_1(vec2<i32>(-2282i, 25450i)), select(u_input.a.x, u_input.a.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(765f, _wgslsmith_f_op_f32(-arg_2.x))));
    var var_1 = func_2();
    global1 = arg_0;
    let var_2 = firstTrailingBit(-_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(-49535i, global0.x, 44835i), vec3<i32>(var_1.a.x, 1i, var_1.a.x)), -vec3<i32>(2147483647i, 2147483647i, -1i), ~global0.xyw));
    global2 = vec3<u32>(~min(1u, (16437u | global2.x) >> (~global2.x % 32u)), ~1288u, global2.x ^ global2.x);
    return StorageBuffer(u_input.b, firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_mod_i32(13915i ^ u_input.a.x, u_input.a.x), -1i)), _wgslsmith_mod_vec3_u32(~select(vec3<u32>(global2.x, u_input.b.x, 1u) ^ vec3<u32>(55388u, global2.x, 33394u), vec3<u32>(global2.x, u_input.b.x, 4678u), vec3<bool>(false, arg_1, var_0.x)), min(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, global2.x, 4294967295u), vec3<u32>(u_input.b.x, 4294967295u, 4294967295u)), vec3<u32>(firstTrailingBit(u_input.b.x), 1u, ~53351u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -62033i;
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(914f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 578f)), 824f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-122f))))))));
    let x = u_input.a;
    s_output = func_1(Struct_1(min(vec2<i32>(_wgslsmith_mod_i32(6225i, global1.a.x), u_input.a.x), abs(countOneBits(global0.yz)))), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1106f, 1591f, -611f, -1000f)));
}

