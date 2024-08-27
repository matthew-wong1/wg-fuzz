struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: u32 = 14809u;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), true, vec4<u32>(7120u, 1u, 49742u, 12638u), vec4<u32>(1u, 0u, 8016u, 66044u));

var<private> global3: array<Struct_1, 12>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> bool {
    return true;
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(812f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(122f + 444f), _wgslsmith_f_op_f32(-447f * -1881f))), _wgslsmith_f_op_f32(select(-815f, _wgslsmith_f_op_f32(-862f - -242f), any(vec2<bool>(global2.b, arg_0.b)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 750f) + _wgslsmith_f_op_f32(f32(-1f) * -1611f)), _wgslsmith_f_op_f32(f32(-1f) * -1448f), true)))));
    global3 = array<Struct_1, 12>();
    global0 = array<u32, 30>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 942f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -1265f))))));
    var var_2 = arg_0;
    return select(vec2<bool>(true, arg_0.b), select(vec2<bool>(u_input.d.x <= -52852i, true), select(vec2<bool>(!var_2.b, true), select(vec2<bool>(global2.b, global2.b), !vec2<bool>(global2.b, false), false), global2.b), vec2<bool>(var_2.b == !var_2.b, any(vec2<bool>(true, true)))), ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, 62579u), reverseBits(global2.c.x)), 30u)] != arg_0.d.x);
}

fn func_1(arg_0: vec2<i32>) -> bool {
    var var_0 = any(vec2<bool>(true && global2.b, any(vec3<bool>(func_2(), global2.b, true))));
    let var_1 = !select(!select(vec2<bool>(global2.b, false), vec2<bool>(true, true), all(vec4<bool>(global2.b, false, global2.b, global2.b))), select(select(func_3(Struct_1(vec3<u32>(5114u, 74149u, 0u), false, u_input.e, global2.d)), vec2<bool>(global2.b, global2.b), true), vec2<bool>(true, true), global2.b), !any(!vec3<bool>(global2.b, true, false)));
    let var_2 = 28980i;
    var var_3 = global3[_wgslsmith_index_u32(min(86308u, _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(~global2.c.x), ~(~u_input.b.x)), abs(global2.d.yz))), 12u)];
    var var_4 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, firstTrailingBit(0u), (_wgslsmith_mod_u32(41959u, 38563u) >> (~global0[_wgslsmith_index_u32(40220u, 30u)] % 32u)) << (_wgslsmith_add_u32(1u, ~u_input.c.x) % 32u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(~(38736u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], 30u)] % 32u)), _wgslsmith_dot_vec2_u32(var_3.a.zy, var_3.d.xx)), ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.a.x, 30u)], 30u)])));
    return var_1.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec3<i32>) -> StorageBuffer {
    global1 = global2.d.x;
    return StorageBuffer(_wgslsmith_f_op_f32(-arg_1.x), u_input.b.x, _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.c.x, 30u)], 30u)], global2.c.x, 0u)) & 1u, min(countOneBits(1u), ~(~21452u))), ~arg_2 ^ (arg_2 & reverseBits(vec3<i32>(4408i, arg_2.x, arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec4<bool>(true, 13243u <= reverseBits(_wgslsmith_div_u32(4294967295u, u_input.e.x)), func_1(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -1i), u_input.d), u_input.d & u_input.d)), all(!select(vec4<bool>(global2.b, global2.b, global2.b, global2.b), vec4<bool>(false, true, global2.b, false), true))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(624f, 1745f, -1720f))) - _wgslsmith_div_vec3_f32(vec3<f32>(218f, 1000f, -1039f), vec3<f32>(-404f, -1358f, -1416f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1004f, -371f, -1750f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-576f, -1000f, -1883f), vec3<f32>(1102f, 632f, 111f), global2.b)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1333f, 995f, 286f), vec3<f32>(-307f, 591f, -253f), vec3<bool>(true, global2.b, global2.b)))) * vec3<f32>(1f, 1f, 1f)), select(select(!vec3<bool>(global2.b, false, global2.b), !vec3<bool>(global2.b, false, false), any(vec3<bool>(global2.b, true, false))), select(!vec3<bool>(global2.b, global2.b, global2.b), !vec3<bool>(global2.b, global2.b, true), vec3<bool>(true, global2.b, global2.b)), !vec3<bool>(global2.b, false, true)))), select(vec3<i32>(firstLeadingBit(-14717i), u_input.d.x, ~(-10007i)), min(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.d.x, u_input.d.x), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(13487i, u_input.a, 17995i) | vec3<i32>(-1i, u_input.d.x, -1i)), !(global0[_wgslsmith_index_u32(4521u, 30u)] > u_input.c.x)) ^ vec3<i32>(u_input.d.x, ~u_input.a, u_input.d.x));
}

