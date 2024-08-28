struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 18>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: f32 = -1568f;

var<private> global3: array<vec4<i32>, 14>;

var<private> global4: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(arg_0.b.x, 1000f), _wgslsmith_f_op_f32(989f + -1000f), arg_2.b.x), arg_2.b)))));
    let var_1 = arg_0.b.x;
    global0 = array<vec4<f32>, 18>();
    global4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(~(vec2<u32>(19448u, arg_0.c.x) << (arg_2.c.yy % vec2<u32>(32u)))), ~reverseBits(u_input.b.zy << (~global4.c.yy % vec2<u32>(32u)))), 22u)];
    let var_2 = select(vec3<bool>(false, arg_2.a, any(!select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, true), vec2<bool>(true, true)))), select(!vec3<bool>(!global4.a, true, arg_2.a && true), select(!vec3<bool>(arg_0.a, false, true), vec3<bool>(any(vec3<bool>(true, true, global4.a)), true, global4.a && global4.a), arg_2.a), arg_0.a), !(!(!(!vec3<bool>(false, arg_2.a, true)))));
    return 82702u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_clamp_u32((~1u >> (arg_3.c.x % 32u)) | ((35464u ^ func_3(Struct_1(global4.a, global4.b, arg_1.c, arg_3.d), global3[_wgslsmith_index_u32(u_input.b.x, 14u)], Struct_1(true, vec3<f32>(global4.b.x, 547f, arg_3.b.x), vec3<u32>(1u, u_input.a, 53764u), vec3<i32>(arg_2, global4.d.x, global4.d.x)))) << (firstTrailingBit(_wgslsmith_div_u32(u_input.a, u_input.a)) % 32u)), arg_1.c.x | ~(0u << (~4294967295u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global4.c.x, _wgslsmith_sub_u32(select(global4.c.x, 10348u, arg_3.a), ~arg_3.c.x), ~(~1u)), arg_1.c ^ (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_1.c.x, u_input.a), arg_1.c, u_input.b.ywz) ^ (vec3<u32>(47686u, 66945u, 4294967295u) << (vec3<u32>(58908u, 43595u, u_input.b.x) % vec3<u32>(32u))))));
    let var_1 = Struct_1(all(vec4<bool>(all(!vec4<bool>(global4.a, false, arg_1.a, arg_1.a)), arg_0 || any(vec2<bool>(global4.a, true)), !arg_1.a, all(vec4<bool>(global4.a, false, global4.a, true)) | false)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.b.x, 679f, true))), global4.b.x, _wgslsmith_f_op_f32(trunc(-241f))), arg_1.b, true)), max(select(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(global4.c.x, 84055u, 4294967295u), vec3<u32>(1790u, 64438u, 46300u), vec3<u32>(4294967295u, global4.c.x, 0u)), ~vec3<u32>(arg_1.c.x, u_input.a, 0u), all(vec4<bool>(true, false, arg_1.a, arg_3.a))), (vec3<u32>(0u, 98295u, u_input.b.x) << (u_input.b.xww % vec3<u32>(32u))) << (reverseBits(vec3<u32>(6906u, global4.c.x, global4.c.x)) % vec3<u32>(32u)), global4.a), countOneBits(abs(vec3<u32>(1u, 28069u, 1u)) & vec3<u32>(0u, arg_1.c.x, arg_1.c.x))), -vec3<i32>(_wgslsmith_add_i32(abs(-1i), max(5983i, arg_3.d.x)), _wgslsmith_add_i32(arg_2, _wgslsmith_dot_vec3_i32(arg_1.d, arg_3.d)), ~(-28538i)));
    global4 = Struct_1(any(!vec2<bool>(false, var_1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -2051f), _wgslsmith_f_op_f32(min(-465f, arg_3.b.x))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1783f, 743f, 898f), vec3<f32>(-2564f, global4.b.x, global4.b.x))), arg_3.b, select(vec3<bool>(arg_0, global4.a, var_1.a), vec3<bool>(var_1.a, global4.a, true), vec3<bool>(false, true, global4.a)))))), global4.c, global4.d);
    return select(!(!vec4<bool>(!arg_3.a, 670f != arg_1.b.x, select(true, arg_3.a, false), true)), !select(vec4<bool>(arg_3.a, arg_1.a & global4.a, true, arg_3.a), vec4<bool>(false | arg_1.a, any(vec2<bool>(arg_3.a, false)), -1260f > arg_3.b.x, !global4.a), !select(vec4<bool>(true, arg_0, arg_1.a, true), vec4<bool>(arg_3.a, false, false, arg_1.a), vec4<bool>(arg_0, global4.a, arg_3.a, true))), arg_1.a);
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~(~func_3(Struct_1(!arg_0.x, _wgslsmith_f_op_vec3_f32(-global4.b), u_input.b.xyx, _wgslsmith_div_vec3_i32(global4.d, global4.d)), global3[_wgslsmith_index_u32(global4.c.x, 14u)], global1[_wgslsmith_index_u32(4294967295u & ~u_input.b.x, 22u)])), 22u)];
    var var_1 = Struct_1(true, global4.b, ~global4.c, vec3<i32>(var_0.d.x, global4.d.x, 2988i));
    global2 = 1056f;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.b.zy) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b.x, var_1.b.x) * vec2<f32>(-656f, var_0.b.x))) * vec2<f32>(-1117f, -624f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x) + global4.b.yy) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-233f, var_1.b.x))) - _wgslsmith_f_op_vec2_f32(global4.b.xy * global4.b.yz))))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -885f))), var_2.x, _wgslsmith_f_op_f32(-512f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-431f)) - _wgslsmith_f_op_f32(f32(-1f) * -2139f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_1.b.x) - _wgslsmith_f_op_f32(-1179f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.b.x, -1702f))))));
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 0u) >> (u_input.b % vec4<u32>(32u))), abs(~(~u_input.a)))), 22u)];
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec2<bool>, arg_3: vec2<bool>) -> vec2<f32> {
    let var_0 = func_4(select(!(!select(vec4<bool>(false, false, false, arg_1), vec4<bool>(false, true, true, arg_0), false)), !func_2(!arg_0, Struct_1(true, global4.b, global4.c, global4.d), 0i << (0u % 32u), Struct_1(arg_3.x, vec3<f32>(global4.b.x, global4.b.x, 2160f), vec3<u32>(0u, 10148u, 29461u), global4.d)), select(vec4<bool>(arg_2.x, true, arg_1, arg_2.x), vec4<bool>(all(vec3<bool>(global4.a, arg_3.x, arg_2.x)), arg_3.x, !arg_1, arg_0 != true), false)));
    var var_1 = func_4(vec4<bool>(func_4(!vec4<bool>(arg_0, false, true, arg_2.x)).a, any(vec2<bool>(select(true, arg_1, arg_2.x), !arg_0)), true, any(select(vec3<bool>(true, arg_0, false), !vec3<bool>(true, arg_1, var_0.a), true))));
    global0 = array<vec4<f32>, 18>();
    return global4.b.yx;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32, arg_3: i32) -> vec2<u32> {
    global3 = array<vec4<i32>, 14>();
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_1 + global4.b.xy);
    var var_1 = global1[_wgslsmith_index_u32(~u_input.b.x, 22u)];
    global0 = array<vec4<f32>, 18>();
    global1 = array<Struct_1, 22>();
    return abs(vec2<u32>(1u, ~(~firstLeadingBit(var_1.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 18>();
    let var_0 = global0[_wgslsmith_index_u32(1u, 18u)];
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(780f, global4.b.x) + _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -999f)), global4.b.x));
    let var_1 = global1[_wgslsmith_index_u32(~(~35943u), 22u)];
    let var_2 = global4.d.zz;
    let var_3 = vec4<f32>(-1354f, global4.b.x, global4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b.x + -782f)));
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_5(global1[_wgslsmith_index_u32(~u_input.a, 22u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(all(vec4<bool>(var_1.a, var_1.a, global4.a, false)), true, vec2<bool>(true, true), select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(true, global4.a), vec2<bool>(var_1.a, true))))), var_2.x, -2147483647i), ~var_1.c.zx), 22u)];
    var var_5 = all(vec2<bool>(!all(vec3<bool>(global4.a, global4.a, true)), var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(var_1.c.x, 18u)] * global0[_wgslsmith_index_u32(15811u, 18u)]))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(global4.c.x, 18u)], vec4<f32>(-300f, 2862f, var_1.b.x, -1000f)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_4.b.x, 1362f, 1310f, 1001f), global0[_wgslsmith_index_u32(var_1.c.x, 18u)])))), _wgslsmith_div_u32(reverseBits(_wgslsmith_mod_u32(31303u, var_1.c.x) >> (~var_4.c.x % 32u)), ~1u));
}

