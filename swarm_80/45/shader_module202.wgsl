struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec2<i32> = vec2<i32>(50446i, 1i);

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(abs(vec3<i32>(select(u_input.a, -29951i, arg_0.x), ~global1.x, abs(global1.x))) >> (abs(abs(abs(vec3<u32>(1u, 3097u, 36258u)))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-586f - _wgslsmith_f_op_f32(min(385f, 1149f))), _wgslsmith_f_op_f32(438f - _wgslsmith_f_op_f32(-806f - -852f)), true))));
    global3 = array<vec4<bool>, 5>();
    global1 = -var_0.a.zx;
    return Struct_1(vec3<i32>(-1i, ~_wgslsmith_mult_i32(countOneBits(global1.x), _wgslsmith_add_i32(0i, -38783i)), reverseBits(global1.x)), 365f);
}

fn func_1() -> f32 {
    global3 = array<vec4<bool>, 5>();
    global0 = countOneBits(4294967295u);
    let var_0 = 944f;
    let var_1 = func_2(global3[_wgslsmith_index_u32(1u, 5u)], -(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(2147483647i, global1.x, 24522i)), u_input.a) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))));
    var var_2 = func_2(vec4<bool>(true, false, select(_wgslsmith_dot_vec2_i32(var_1.a.xx, vec2<i32>(0i, var_1.a.x)), reverseBits(var_1.a.x), true) <= 0i, false), var_1.a.yy);
    return var_2.b;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(14429u, 1u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(~vec2<u32>(1u, 18833u)), ~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), ~vec2<u32>(21592u, min(59851u, 4294967295u))), abs(4294967295u));
    var var_1 = arg_0;
    var var_2 = 53743u;
    let var_3 = -_wgslsmith_clamp_vec3_i32(-(~(-vec3<i32>(-1i, -2147483647i, -26289i))), (-arg_1.a & min(vec3<i32>(global1.x, arg_1.a.x, global1.x), arg_1.a)) << (vec3<u32>(var_0.x, ~16712u, 19239u) % vec3<u32>(32u)), -(-arg_1.a ^ (vec3<i32>(arg_1.a.x, global1.x, -26293i) << (vec3<u32>(12023u, 108824u, var_0.x) % vec3<u32>(32u)))));
    var var_4 = Struct_1(~(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 18841i, global1.x), var_3) << (_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, 4294967295u, 4294967295u)) % vec3<u32>(32u))) & (~var_3 >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, var_0.x), vec3<u32>(47949u, 25353u, 35927u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-arg_0));
    return -960f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-556f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-1856f, Struct_1(vec3<i32>(global1.x, 2105i, 21685i), 553f))) - _wgslsmith_div_f32(-2426f, 246f)))), _wgslsmith_f_op_f32(651f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), 1390f, 1f);
    global2 = select(vec2<bool>(true, global2.x), select(!vec2<bool>(!global2.x, global2.x), !(!(!vec2<bool>(false, global2.x))), any(vec4<bool>(true, true, any(vec4<bool>(global2.x, true, true, global2.x)), -1000f < var_0.x))), select(!select(vec2<bool>(global2.x, global2.x), !vec2<bool>(global2.x, global2.x), false), select(vec2<bool>(global2.x, true), vec2<bool>(false, global2.x & global2.x), vec2<bool>(true, !global2.x)), select(select(select(vec2<bool>(true, false), vec2<bool>(false, global2.x), true), vec2<bool>(true, global2.x), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(global2.x, true), vec2<bool>(global2.x, true)), global2.x)));
    var var_1 = vec2<bool>(true, any(global3[_wgslsmith_index_u32(14973u, 5u)]));
    let var_2 = !any(vec2<bool>(firstLeadingBit(0i) >= _wgslsmith_sub_i32(-39046i, global1.x), all(!global3[_wgslsmith_index_u32(66577u, 5u)])));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), -474f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -706f), var_0.x, var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x))))) - vec4<f32>(-241f, 784f, _wgslsmith_f_op_f32(-933f - _wgslsmith_f_op_f32(124f * 1000f)), _wgslsmith_f_op_f32(func_1())))));
    global1 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(firstTrailingBit(-vec2<i32>(-37696i, -19061i))), -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, 23150i, 0i), vec3<i32>(35471i, global1.x, -133i)), 1i)), firstTrailingBit(vec2<i32>(abs(-38808i), -_wgslsmith_clamp_i32(1i, 48329i, global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(2196f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-231f, -1883f), _wgslsmith_f_op_f32(var_0.x * var_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.wx + vec2<f32>(146f, var_0.x))), -u_input.a | 54798i, vec3<u32>(0u, 4294967295u, ~1u));
}

