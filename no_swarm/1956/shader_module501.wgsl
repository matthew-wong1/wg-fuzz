struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(36927i, 16224i, 0i, -1i, -29798i, 10108i, 57139i, -41538i, i32(-2147483648), 0i, 39943i, -1168i, -23726i, 2147483647i, 2605i, 1i, 14069i, 4969i);

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, 0i, 0i, -6841i);

var<private> global2: vec3<f32>;

var<private> global3: array<f32, 31> = array<f32, 31>(-1315f, 957f, -1000f, 136f, 663f, 684f, 1027f, -622f, -893f, -1704f, -653f, -640f, 1071f, 1951f, -428f, 515f, 962f, 293f, 931f, -2249f, 2172f, -1022f, -1028f, 1063f, -724f, 2052f, 667f, 151f, 857f, -782f, -192f);

var<private> global4: array<Struct_4, 3>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec3<f32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1206f, global3[_wgslsmith_index_u32(~1u, 31u)], 1230f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2, arg_0.a.b.yzz) - _wgslsmith_f_op_vec3_f32(arg_0.a.b.zxw + vec3<f32>(338f, arg_2.x, arg_2.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.b.b.ywx, vec3<f32>(global3[_wgslsmith_index_u32(28857u, 31u)], arg_0.a.b.x, 1371f))), _wgslsmith_f_op_vec3_f32(abs(arg_2))))));
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = 4294967295u;
    global2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-138f, _wgslsmith_f_op_f32(f32(-1f) * -687f), 529f)))));
    var var_1 = vec2<bool>(true, !(!arg_0));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -304f), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x)))));
    let var_3 = 231f;
    return -_wgslsmith_sub_i32(6298i, _wgslsmith_sub_i32(global1.x, ~1i));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_5) -> vec2<i32> {
    global4 = array<Struct_4, 3>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-207f * global3[_wgslsmith_index_u32(0u, 31u)]), _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(6314u, 31u)], arg_0.x)))) + arg_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -845f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(Struct_1(120301u, vec4<f32>(610f, arg_0.x, global3[_wgslsmith_index_u32(72821u, 31u)], arg_0.x)), Struct_1(4294967295u, vec4<f32>(-432f, -662f, global3[_wgslsmith_index_u32(0u, 31u)], global2.x)), vec4<f32>(global2.x, 1750f, global3[_wgslsmith_index_u32(0u, 31u)], -1004f)), 17202u, vec3<f32>(global2.x, -778f, global3[_wgslsmith_index_u32(25001u, 31u)]))).x, _wgslsmith_f_op_f32(-arg_0.x))))), global2.x)));
    var var_1 = _wgslsmith_div_f32(761f, _wgslsmith_f_op_f32(316f + _wgslsmith_f_op_f32(-arg_0.x)));
    var var_2 = select(select(vec3<bool>(true, true, false), vec3<bool>(true, select(false, true, true), _wgslsmith_f_op_f32(min(1506f, -703f)) > global3[_wgslsmith_index_u32(~93178u, 31u)]), _wgslsmith_add_u32(~4294967295u, select(16561u, 12771u, true)) < (_wgslsmith_add_u32(64671u, 34172u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4239u, 43643u, 1287u)) % 32u))), select(vec3<bool>(true, firstTrailingBit(arg_1.a.x) < 0i, -137f <= _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(52139u, 31u)], arg_0.x))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), true), (-25577i != _wgslsmith_sub_i32(-2147483647i, global1.x)) || true), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 31u)]) + _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(1u, 31u)]))) >= global2.x, (any(vec3<bool>(false, true, true)) & true) & true, select(true, true, true)));
    var var_3 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(min(vec2<u32>(24776u, 1u), vec2<u32>(25921u, 30355u)), select(vec2<u32>(1u, 11131u), vec2<u32>(4294967295u, 2239u), var_2.x)), ~(~vec2<u32>(1u, 0u))), (~4294967295u & _wgslsmith_clamp_u32(57296u, 7822u, 17107u)) << (_wgslsmith_div_u32(44905u, ~19395u) % 32u));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(Struct_1(4294967295u, vec4<f32>(global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(0u, 31u)], global2.x, 611f)), Struct_1(71139u, vec4<f32>(-2560f, global2.x, 837f, -1160f)), vec4<f32>(-1000f, 1000f, global2.x, global3[_wgslsmith_index_u32(0u, 31u)])), 10615u, vec3<f32>(global3[_wgslsmith_index_u32(0u, 31u)], -628f, 591f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-256f, -1000f, 952f))), vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(61253u, 10988u), 31u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(5437u, 31u)]), _wgslsmith_f_op_f32(select(-667f, global2.x, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(217f, global3[_wgslsmith_index_u32(6449u, 31u)], 816f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1130f, 408f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(143558u, 31u)], global3[_wgslsmith_index_u32(1u, 31u)], 344f)), true))))) - vec3<f32>(-727f, -372f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-358f * 1008f), global2.x, true)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1175f * global2.x))))));
    var var_0 = _wgslsmith_div_i32(global0[_wgslsmith_index_u32(~(~1u), 18u)] >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 24574u, 53141u)) % 32u), func_2(any(vec3<bool>(true, true, true))));
    let var_1 = Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(0u, 31u)], global2.x, global3[_wgslsmith_index_u32(50639u, 31u)]))))));
    let var_2 = func_3(var_1.b.zw, Struct_5(~(vec4<i32>(7619i, -31490i, global0[_wgslsmith_index_u32(0u, 18u)], u_input.b.x) << (firstLeadingBit(vec4<u32>(4294967295u, 38508u, 55998u, 47524u)) % vec4<u32>(32u))), reverseBits(-global1.wy)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * var_1.b.x);
    global0 = array<i32, 18>();
    var_0 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -var_2.x, 249f, var_1.a, u_input.c);
}

