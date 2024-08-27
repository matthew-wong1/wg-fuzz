struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(409f, 1303f, -1218f, 2033f);

var<private> global1: vec4<i32>;

var<private> global2: array<vec3<f32>, 16>;

var<private> global3: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false));

var<private> global4: Struct_1 = Struct_1(vec4<i32>(-38432i, 2147483647i, 2147483647i, 2147483647i), vec3<f32>(155f, 210f, 1215f), true, 2147483647i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global2 = array<vec3<f32>, 16>();
    global2 = array<vec3<f32>, 16>();
    let var_0 = _wgslsmith_div_i32(_wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(global1.xyx, arg_0.a.yzw), global1.x & ~(-32376i)), arg_0.a.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(step(global0.zzw, arg_0.b));
    global4 = arg_0;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b.x - -1418f)))), 489f));
}

fn func_2() -> vec3<bool> {
    let var_0 = i32(-1i) * -global1.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global0.x), -399f) * _wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(-2147483647i, -26064i, global1.x, global1.x), vec3<f32>(1323f, -581f, global4.b.x), global4.c, 0i)))), _wgslsmith_f_op_f32(f32(-1f) * -1852f))));
    global4 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 1i, 48152i, -40895i), -global4.a << ((~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (~vec4<u32>(u_input.a.x, 3367u, u_input.a.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))), vec3<f32>(-146f, var_1.x, _wgslsmith_f_op_f32(round(global0.x))), true, var_0);
    global4 = Struct_1(global4.a, vec3<f32>(_wgslsmith_f_op_f32(floor(1517f)), -251f, -843f), true, -2147483647i);
    global0 = vec4<f32>(-398f, -2482f, 589f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x)))), var_1.x));
    return select(select(vec3<bool>(true, all(select(vec3<bool>(false, true, global4.c), vec3<bool>(global4.c, global4.c, global4.c), vec3<bool>(global4.c, false, false))), false), select(vec3<bool>(true, true, true), !vec3<bool>(global4.c, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, global4.c), vec3<bool>(global4.c, false, true)), vec3<bool>(true, global4.c, false), vec3<bool>(true, true, true))), select(select(select(vec3<bool>(global4.c, false, global4.c), vec3<bool>(true, global4.c, global4.c), false), select(vec3<bool>(true, false, global4.c), vec3<bool>(true, true, true), vec3<bool>(global4.c, global4.c, false)), select(vec3<bool>(global4.c, true, global4.c), vec3<bool>(global4.c, global4.c, false), true)), !vec3<bool>(global4.c, true, global4.c), all(!vec3<bool>(global4.c, global4.c, global4.c)))), select(vec3<bool>(all(!vec2<bool>(true, global4.c)), !all(global3[_wgslsmith_index_u32(4294967295u, 27u)]), true), !(!(!vec3<bool>(true, global4.c, true))), select(vec3<bool>(global4.c || global4.c, true, true), vec3<bool>(global1.x == var_0, true, true), !(!vec3<bool>(global4.c, global4.c, global4.c)))), u_input.a.x >= (u_input.a.x >> (abs(74977u) % 32u)));
}

fn func_1(arg_0: i32) -> vec4<f32> {
    global3 = array<vec4<bool>, 27>();
    let var_0 = select(select(vec3<bool>(global4.c, global4.c, any(vec3<bool>(false, global4.c, false))), !select(func_2(), vec3<bool>(global4.c, false, true), select(vec3<bool>(global4.c, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, global4.c))), global4.c), !vec3<bool>(false, func_2().x, false), !(!global4.c));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-768f, global4.b.x)) * _wgslsmith_f_op_f32(min(global0.x, 758f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(480f)) - global0.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.b.zx) * _wgslsmith_f_op_vec2_f32(vec2<f32>(2254f, -346f) * vec2<f32>(global4.b.x, 2161f))))));
    let var_2 = global4.c;
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(1f, -907f, -727f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4.b.x * global0.x))), -1477f)));
    return vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(round(-1734f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) + -306f), -1613f))), _wgslsmith_f_op_f32(483f - -1734f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(reverseBits(u_input.a.x), 1u);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global4.a.x)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-128f * global4.b.x), global4.b.x, _wgslsmith_div_f32(-689f, -1476f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -1649f, 1266f) + vec4<f32>(-875f, -1974f, -680f, 181f))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.x, 2750f, global0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global4.b.x, global4.b.x, global4.b.x))), vec4<f32>(-232f, _wgslsmith_f_op_f32(f32(-1f) * -302f), _wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(abs(134f)))))));
    var var_1 = vec3<u32>(~min(u_input.a.x, 4294967295u), ~(~u_input.a.x), firstTrailingBit(countOneBits(6848u)));
    var var_2 = func_2().x;
    let var_3 = _wgslsmith_add_i32(1i, ~firstTrailingBit(-27829i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_0, vec4<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(u_input.a.x, var_0)), ~_wgslsmith_clamp_vec2_u32(var_1.xz, u_input.a, var_1.xy)), ~1u, ~1u, ~reverseBits(u_input.a.x)));
}

