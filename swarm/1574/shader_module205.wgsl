struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global2: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = arg_0;
    let var_1 = firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(64981u, u_input.a, u_input.a), ~(~(~vec3<u32>(20953u, 0u, u_input.a)))));
    var var_2 = ~vec3<u32>(reverseBits(~select(1u, u_input.a, false)), _wgslsmith_mod_u32(_wgslsmith_add_u32(var_1, 4294967295u ^ var_1), ~u_input.a), ~(~(~1u)));
    let var_3 = select(!(!vec4<bool>(any(vec4<bool>(true, false, true, true)), any(global1.wyw), true, global1.x)), select(!vec4<bool>(true, true && global1.x, false, false), !(!select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(true, false, global1.x, global1.x), false)), select(!select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, global1.x), global1.x), !vec4<bool>(global1.x, true, global1.x, false), false)), true);
    var var_4 = vec3<i32>(~2147483647i, reverseBits(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(3286i, global2.a.x, u_input.b.x), arg_0.a), ~var_0.a.x)), 1i);
    return 20536u;
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = vec3<i32>(arg_0.x, max(_wgslsmith_div_i32(max(~0i, -48080i >> (0u % 32u)), _wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_sub_i32(u_input.b.x, global2.a.x), firstLeadingBit(2147483647i))), 2147483647i), 2207i);
    let var_1 = vec4<u32>(~(~func_3(Struct_1(global2.a), max(-76444i, global2.a.x))), 4294967295u, u_input.a, ~u_input.a);
    var var_2 = Struct_1(vec3<i32>(var_0.x, _wgslsmith_mod_i32(~(global2.a.x << (1360u % 32u)), min(arg_0.x, global2.a.x)), reverseBits(20878i)));
    let var_3 = Struct_1(var_2.a);
    var var_4 = true;
    return ~1i;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c.x, global2.a.x, i32(-1i) * -10339i, u_input.c.x) >> (~(~vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a)) % vec4<u32>(32u))), reverseBits(vec4<i32>(func_2(vec3<i32>(u_input.b.x, u_input.c.x, 14770i)), i32(-1i) * -global2.a.x, max(u_input.b.x, firstTrailingBit(u_input.b.x)), select(-5023i, -u_input.b.x, global0[_wgslsmith_index_u32(0u, 24u)] > -1222f))));
    global2 = Struct_1(abs(vec3<i32>(global2.a.x, _wgslsmith_dot_vec2_i32(u_input.c.zx, vec2<i32>(0i, u_input.c.x)), firstLeadingBit(1i))));
    var var_1 = Struct_2(Struct_1(reverseBits(~_wgslsmith_add_vec3_i32(vec3<i32>(18418i, 2147483647i, -1i), u_input.b.wwy))));
    global2 = var_1.a;
    global0 = array<f32, 24>();
    return var_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> u32 {
    var var_0 = Struct_1(vec3<i32>(u_input.b.x, -1i, 28795i));
    let var_1 = Struct_2(Struct_1(vec3<i32>(func_2(select(var_0.a, global2.a, arg_1)), ~(-14851i), -36577i)));
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(func_1(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-102f * global0[_wgslsmith_index_u32(1u, 24u)])))), true, all(!vec4<bool>(all(vec2<bool>(global1.x, false)), any(vec4<bool>(true, true, global1.x, global1.x)), global1.x, global1.x)));
    let var_1 = global1.x;
    var_0 = _wgslsmith_div_u32(u_input.a, 36399u & _wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(max(u_input.a, u_input.a), ~1u)));
    let var_2 = _wgslsmith_add_i32(~_wgslsmith_add_i32(i32(-1i) * -u_input.b.x, global2.a.x << (63282u % 32u)), countOneBits(0i));
    global1 = !select(vec4<bool>(all(global1.xx), global1.x, global1.x && all(vec4<bool>(true, global1.x, global1.x, true)), !global1.x), vec4<bool>(true, global1.x != true, any(select(vec3<bool>(false, false, true), vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, false, true))), !any(vec2<bool>(global1.x, global1.x))), select(select(vec4<bool>(true, false, global1.x, true), select(vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(global1.x, true, false, true)), vec4<bool>(true, global1.x, true, global1.x)), !vec4<bool>(true, false, global1.x, global1.x), !(!vec4<bool>(global1.x, true, global1.x, true))));
    var var_3 = global0[_wgslsmith_index_u32(0u, 24u)];
    global2 = Struct_1(vec3<i32>(_wgslsmith_add_i32(-u_input.c.x, min(13308i, -u_input.b.x)), (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 1i), vec2<i32>(-48912i, u_input.c.x)) | ~2147483647i) >> ((firstTrailingBit(u_input.a) | min(u_input.a, u_input.a)) % 32u), u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], 1043f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], 1176f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(967f, global0[_wgslsmith_index_u32(4294967295u, 24u)]))))));
}

