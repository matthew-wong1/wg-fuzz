struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 32>;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> vec4<f32> {
    let var_0 = global0.d.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.d.x))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) * -388f)), global1.b)));
    return global0.d;
}

fn func_2() -> Struct_1 {
    var var_0 = ~max(reverseBits(~(vec4<u32>(41971u, 97413u, u_input.b.x, 49147u) >> (vec4<u32>(u_input.a.x, 0u, 0u, 307u) % vec4<u32>(32u)))), ~vec4<u32>(0u, 26971u, 4294967295u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(min(-259f, global1.d.x)));
    global0 = Struct_1(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.b.x, global1.a, 0u, u_input.a.x)), vec4<u32>(1u, 1u, u_input.a.x, 0u) >> (vec4<u32>(global0.a, 0u, 61560u, 80841u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(2214u, 1u, 4294967295u, global1.a), vec4<u32>(0u, 16036u, var_0.x, 53178u)))), ~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.x, global0.a, 14449u), vec4<u32>(u_input.a.x, global1.a, global1.a, var_0.x)))), global0.d.x, _wgslsmith_mod_i32(max(_wgslsmith_mod_i32(i32(-1i) * -23327i, global0.c), abs(u_input.c)), global0.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.d)))) - _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(_wgslsmith_add_u32(50714u, u_input.a.x), ~var_0.x, _wgslsmith_clamp_u32(var_0.x, u_input.b.x, u_input.a.x)), i32(-1i) * -8605i))));
    global1 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), 2147483647i, vec4<f32>(357f, _wgslsmith_div_f32(var_1.a, 414f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global1.d.x)), global1.d.x)), _wgslsmith_f_op_f32(-var_1.a)));
    global1 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(max(0u, global1.a) & (4294967295u << (global0.a % 32u)), var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(7012u, 1u, u_input.a.x), var_0.zxy)), vec3<u32>(var_0.x, 4489u, countOneBits(~u_input.a.x))), 643f, ~0i, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global0.d - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-848f, 1454f, global1.b, global0.b))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-122f, global0.d.x, global1.b, global0.d.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(global1.d, global1.d))))))));
    return Struct_1(var_0.x, _wgslsmith_f_op_f32(abs(var_1.a)), 111652i, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b))), var_1.a, -974f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x - 1694f)), _wgslsmith_f_op_f32(-var_1.a), any(vec3<bool>(true, true, true))))));
}

fn func_1() -> f32 {
    global1 = func_2();
    global1 = func_2();
    var var_0 = Struct_2(global1.b);
    let var_1 = func_2();
    var var_2 = 49775u;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(275f + 1234f), false));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> StorageBuffer {
    global2 = array<vec3<f32>, 32>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.d - vec4<f32>(-436f, arg_0.d.x, global1.b, -504f)))))), _wgslsmith_f_op_vec4_f32(-global0.d));
    let var_1 = func_2();
    var var_2 = ~firstLeadingBit(~(~vec4<u32>(4294967295u, 15905u, arg_0.a, 4294967295u))) ^ ~abs(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(100693u, 7217u, 0u, global1.a)), vec4<u32>(arg_0.a, global0.a, global0.a, 67825u) ^ vec4<u32>(15755u, var_1.a, u_input.a.x, arg_0.a)));
    global0 = arg_0;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -790f), var_0.x))), vec2<f32>(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1500f - 748f)))), max(_wgslsmith_dot_vec3_u32(vec3<u32>(25520u, 4294967295u, u_input.b.x) | vec3<u32>(47385u, 0u, global0.a), vec3<u32>(57970u, 19306u, var_1.a) ^ ~var_2.zxy), 2909u), var_2.zx, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global1 = Struct_1(1u << (~global0.a % 32u), _wgslsmith_f_op_f32(-1068f - -1391f), global1.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.d), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(global0.d.x - 1000f), _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(global1.d.x - global1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.x, global0.b, global1.d.x, global1.b))))));
    var_0 = !((i32(-1i) * -_wgslsmith_div_i32(global1.c, global0.c)) == _wgslsmith_add_i32(firstLeadingBit(u_input.c ^ global1.c), _wgslsmith_mod_i32(global0.c, global0.c << (4294967295u % 32u))));
    global3 = ~global0.a;
    let var_1 = vec3<u32>(~0u, ~(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 50401u, 1u), vec3<u32>(9567u, 11553u, 0u)), 1u, min(global1.a, global1.a))), firstTrailingBit(50274u));
    var var_2 = _wgslsmith_add_i32(u_input.c << (var_1.x % 32u), 1i);
    let x = u_input.a;
    s_output = func_4(Struct_1(86913u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1())))), abs(u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.x, 464f, -1036f, global1.d.x)), vec4<f32>(global1.b, -154f, global1.b, global0.b))) - global1.d)), select(vec3<bool>(all(vec2<bool>(true, true)), true, false), !vec3<bool>(any(vec2<bool>(true, true)), true, true), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)))));
}

