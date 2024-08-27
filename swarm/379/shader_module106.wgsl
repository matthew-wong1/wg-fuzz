struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(1058f, 227f), vec2<f32>(951f, 1230f));

var<private> global2: array<vec4<f32>, 28>;

var<private> global3: bool = true;

var<private> global4: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(14192i, -25940i, -22590i, -26312i), vec4<i32>(55433i, -19241i, -4456i, 38754i), vec4<i32>(1i, 12928i, 18257i, 0i), vec4<i32>(-39731i, -19184i, 48058i, 1i), vec4<i32>(23105i, -24379i, 48548i, 1i), vec4<i32>(21988i, 39078i, i32(-2147483648), -33536i), vec4<i32>(23701i, 1i, 2147483647i, -56707i), vec4<i32>(8254i, -37255i, i32(-2147483648), i32(-2147483648)), vec4<i32>(19369i, 2147483647i, i32(-2147483648), 26928i), vec4<i32>(1i, -35136i, 1i, 28084i), vec4<i32>(-19704i, -26143i, 2147483647i, 28623i), vec4<i32>(-1i, -1i, 15145i, 371i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> vec4<i32> {
    var var_0 = Struct_2(vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, arg_0.b) * _wgslsmith_f_op_f32(ceil(arg_1.b))))), global1.a);
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-601f, _wgslsmith_f_op_f32(round(-1000f)))), -500f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1924f, 402f) + vec2<f32>(-764f, global1.b.x))))))));
    global0 = u_input.b.xy;
    global4 = array<vec4<i32>, 12>();
    var_0 = Struct_2(global1.b, _wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(vec2<f32>(-255f, global1.a.x) + global1.b)));
    return global4[_wgslsmith_index_u32(global0.x, 12u)];
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.b) == -1951f;
    global1 = Struct_2(global1.a, global1.b);
    let var_1 = -_wgslsmith_div_vec4_i32(global4[_wgslsmith_index_u32(global0.x, 12u)], func_3(arg_1, arg_1, u_input.b));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.x * 563f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + arg_1.b)), 338f)));
    let var_3 = ~(~(~(~0u)));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global4 = array<vec4<i32>, 12>();
    global4 = array<vec4<i32>, 12>();
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(-global1.a.x), arg_0, abs(vec2<u32>(u_input.b.x, 53682u)) << (select(u_input.b.yx, vec2<u32>(4294967295u, 83730u), arg_0.a.x) % vec2<u32>(32u)))), global1.a, select(!vec2<bool>(arg_0.a.x, false), select(vec2<bool>(true, arg_0.a.x), arg_0.a.yy, arg_0.a.x), any(!vec2<bool>(arg_0.a.x, arg_0.a.x))))), global1.b);
    var var_0 = 1u;
    global4 = array<vec4<i32>, 12>();
    return 5948i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = true;
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(-1i), func_1(Struct_1(vec4<bool>(true, true, true, true), global1.b.x)), 49153i), countOneBits(_wgslsmith_mult_vec3_i32((vec3<i32>(38795i, -15373i, 37899i) >> (vec3<u32>(global0.x, 18225u, 60376u) % vec3<u32>(32u))) & abs(vec3<i32>(1i, 2147483647i, -15562i)), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-22457i, -1i, -2147483647i), vec3<i32>(-2147483647i, -40885i, 40713i)), max(vec3<i32>(-25285i, -22350i, -70i), vec3<i32>(-20862i, 50865i, 1i))))));
    global4 = array<vec4<i32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(72810u, 1u, u_input.d.x), _wgslsmith_mult_vec3_u32(vec3<u32>(35538u, global0.x, u_input.d.x), vec3<u32>(21886u, global0.x, global0.x)), vec3<bool>(false, true, true)) | max(_wgslsmith_clamp_vec3_u32(vec3<u32>(18630u, u_input.d.x, 0u), vec3<u32>(global0.x, 4294967295u, 1u), vec3<u32>(5968u, u_input.d.x, u_input.c)), select(vec3<u32>(79419u, u_input.b.x, u_input.b.x), u_input.b, vec3<bool>(false, false, true))), _wgslsmith_add_vec3_u32(u_input.e, vec3<u32>(global0.x, ~1u, _wgslsmith_div_u32(4294967295u, u_input.b.x))), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(23474u, u_input.c, u_input.a), u_input.b))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(399f, Struct_1(vec4<bool>(false, true, true, false), -621f), vec2<u32>(17249u, 0u))).x), _wgslsmith_f_op_f32(abs(-1048f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.b.x, global1.a.x)) * -313f)), global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2068f)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~(2411u | u_input.c), ~(~0u)), countOneBits(global0.x << (1u % 32u))));
}

