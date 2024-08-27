struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: vec3<u32> = vec3<u32>(0u, 0u, 0u);

var<private> global2: vec4<i32> = vec4<i32>(2147483647i, 1219i, 1i, -1i);

var<private> global3: array<Struct_3, 15>;

var<private> global4: u32 = 67463u;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_2(u_input.b.x, vec2<bool>(_wgslsmith_add_i32(u_input.b.x, ~(-1i)) <= _wgslsmith_mod_i32(-u_input.a, i32(-1i) * -1i), false));
    let var_1 = global3[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec2_u32(min(~global1.yx, max(u_input.c.xz, u_input.c.xw)), ~reverseBits(vec2<u32>(u_input.c.x, u_input.c.x)))), 15u)];
    global0 = array<Struct_1, 8>();
    let var_2 = _wgslsmith_f_op_f32(-var_1.c.b);
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.zy, ~(vec2<u32>(global1.x, global1.x) & _wgslsmith_add_vec2_u32(u_input.c.xx, global1.xx))), u_input.c.xw ^ (_wgslsmith_mult_vec2_u32(u_input.c.xy, vec2<u32>(u_input.c.x, 0u) & vec2<u32>(1u, 0u)) ^ u_input.c.yz)), 15u)];
    return !select(!select(select(var_0.b, vec2<bool>(var_0.b.x, false), vec2<bool>(var_0.b.x, false)), !var_0.b, var_0.b), select(var_0.b, var_0.b, !var_0.b.x || true), false);
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>) -> u32 {
    var var_0 = vec2<u32>(u_input.c.x & 1320u, _wgslsmith_add_u32(arg_2.x, countOneBits(global1.x | (94763u << (arg_2.x % 32u)))));
    let var_1 = all(!(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), func_3(), vec2<bool>(false, false))));
    var var_2 = var_0.x ^ ~abs(~arg_1.c.a >> (abs(4294967295u) % 32u));
    return 101092u;
}

fn func_1(arg_0: vec4<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(327f * 672f), _wgslsmith_f_op_f32(468f * 857f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-143f))))) - _wgslsmith_div_vec2_f32(vec2<f32>(891f, 1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1117f, -1000f))) + vec2<f32>(-462f, -255f))))));
    global0 = array<Struct_1, 8>();
    let var_1 = _wgslsmith_div_u32(_wgslsmith_div_u32(abs(~(~4294967295u)), func_2(var_0.x, Struct_3(max(global2.wxy, vec3<i32>(u_input.b.x, global2.x, 1i)), abs(global1.x), global0[_wgslsmith_index_u32(arg_0.x << (u_input.c.x % 32u), 8u)]), _wgslsmith_add_vec2_u32(~vec2<u32>(global1.x, arg_0.x), vec2<u32>(arg_0.x, 1u)))), global1.x);
    let var_2 = Struct_3(~vec3<i32>(u_input.b.x, global2.x, ~u_input.b.x), 1u, global0[_wgslsmith_index_u32(~(~1u), 8u)]);
    var var_3 = var_2;
    return vec2<bool>(true, any(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))));
}

fn func_4(arg_0: Struct_2) -> u32 {
    global0 = array<Struct_1, 8>();
    let var_0 = !((false | (arg_0.b.x == false)) | false);
    let var_1 = ~u_input.c.x;
    global1 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(max(reverseBits(countOneBits(u_input.c.yyw)), _wgslsmith_sub_vec3_u32(u_input.c.zwz, abs(vec3<u32>(1u, var_1, 1u)))), ~u_input.c.zzz), vec3<u32>(~(~0u), min(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 0u), 45107u), 1u));
    let var_2 = _wgslsmith_add_vec3_i32(countOneBits(firstLeadingBit(vec3<i32>(-1i) * -u_input.b)), vec3<i32>(global2.x, u_input.b.x, ~(-1i | -global2.x)));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c.x, global1.x ^ 1u), vec3<u32>(u_input.c.x, global1.x << (55929u % 32u), global1.x)), vec3<u32>(firstTrailingBit(global1.x), global1.x, global1.x)) >> (vec3<u32>(min(u_input.c.x, min(11341u, _wgslsmith_div_u32(1u, 3960u))), func_4(Struct_2(1i, func_1(vec4<u32>(global1.x, u_input.c.x, 4294967295u, global1.x)))), abs(u_input.c.x)) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1068f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1813f)) + _wgslsmith_f_op_f32(537f - 528f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-405f))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(339f, -935f), _wgslsmith_f_op_f32(select(-1226f, 914f, true)), 1f)), vec3<f32>(1f, 1f, 1f))));
    global0 = array<Struct_1, 8>();
    let var_2 = Struct_2(_wgslsmith_add_i32(-2147483647i, -global2.x), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, true, false, true))), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), func_3(), true)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.ww);
}

