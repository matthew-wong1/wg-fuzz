struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(10411i, 21981i, -1i);

var<private> global1: i32 = -14196i;

var<private> global2: Struct_3 = Struct_3(false, -1024f, Struct_1(1u, false, true, vec4<f32>(-944f, -150f, 126f, 1098f)), vec2<u32>(19117u, 40959u), Struct_1(96863u, false, true, vec4<f32>(1109f, 1000f, 868f, -626f)));

var<private> global3: array<Struct_3, 22>;

var<private> global4: Struct_2;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<u32>) -> vec4<f32> {
    global0 = ~(~firstTrailingBit(vec3<i32>(2147483647i, -25011i, u_input.a.x) << (reverseBits(arg_0) % vec3<u32>(32u))));
    global1 = _wgslsmith_sub_i32(global0.x, select(0i ^ ((i32(-1i) * -3245i) & _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 37375i, -1i, -11566i), vec4<i32>(22188i, 5894i, 7470i, u_input.a.x))), global0.x, any(vec2<bool>(true, any(vec3<bool>(global4.a.x, false, global4.b.b))))));
    global2 = global3[_wgslsmith_index_u32(global2.c.a, 22u)];
    global1 = countOneBits(-u_input.a.x);
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(arg_0.xz, arg_0.zy)) ^ vec2<u32>(10243u, ~arg_0.x), _wgslsmith_add_vec2_u32(vec2<u32>(min(0u, global2.e.a), reverseBits(global2.c.a)), select(_wgslsmith_mult_vec2_u32(arg_0.zz, arg_0.xz), vec2<u32>(arg_0.x, 30733u) >> (global2.d % vec2<u32>(32u)), select(vec2<bool>(global4.a.x, global4.a.x), vec2<bool>(true, global2.e.b), vec2<bool>(global2.a, false))))), 30047u, arg_0.x), 22u)];
    return _wgslsmith_div_vec4_f32(global4.b.d, global2.c.d);
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_1(firstLeadingBit(~(~global4.b.a << (global2.c.a % 32u))), global2.e.c, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.c.d.x, global4.b.d.x, global4.b.d.x, -232f), _wgslsmith_f_op_vec4_f32(global2.e.d - _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(global4.b.a, global2.c.a, global2.c.a))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.c.d - global2.e.d)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2.e.d.x, global2.b, -1036f)))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.e.d + vec4<f32>(global2.e.d.x, 775f, global2.e.d.x, 178f)) * var_0.d) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1160f, global2.e.d.x, global2.e.d.x, var_0.d.x) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.d.x, global2.e.d.x, 155f, 496f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1163f + -1339f), -398f, _wgslsmith_f_op_f32(478f * var_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -420f))))));
    var var_2 = all(global4.a.yy);
    global2 = Struct_3(false, 1834f, Struct_1(2840u, all(!vec4<bool>(global4.b.b, arg_0, global4.b.c, true)), select(true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c.d)))), global2.d, var_0);
    let var_3 = global3[_wgslsmith_index_u32(global4.b.a, 22u)];
    return Struct_2(!(!select(vec3<bool>(true, true, global4.a.x), select(vec3<bool>(arg_0, true, global2.a), global4.a, true), vec3<bool>(true, true, var_3.a))), Struct_1(0u, !(!all(vec4<bool>(true, false, global4.a.x, var_3.c.b))), false, vec4<f32>(_wgslsmith_f_op_f32(-1048f + var_0.d.x), _wgslsmith_f_op_f32(385f - var_3.b), var_0.d.x, 452f)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec2<i32>) -> vec3<i32> {
    let var_0 = func_2(!global2.c.c, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -12448i, global0.x) ^ vec3<i32>(22170i, u_input.a.x, 4467i), vec3<i32>(global0.x, global0.x, arg_3.x)))).b;
    let var_1 = Struct_3(global4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -739f))))), func_2(true, global0.x).b, vec2<u32>(_wgslsmith_clamp_u32(86304u, ~4294967295u ^ global2.d.x, global2.e.a), countOneBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(global4.b.a, global4.b.a), 4294967295u))), Struct_1(var_0.a, global4.b.c, false, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d.x, 1938f, 970f, arg_1), vec4<f32>(global2.b, global2.e.d.x, 1000f, global2.e.d.x))), _wgslsmith_f_op_vec4_f32(floor(global2.c.d))))));
    return vec3<i32>(reverseBits(arg_3.x), 34408i, 1761i);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_mult_vec3_i32(reverseBits(func_4(global2.c, global4.b.d.x, func_2(false, min(-1i, u_input.a.x)), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(38029i, u_input.a.x), u_input.a), u_input.a))), firstTrailingBit(reverseBits(~countOneBits(vec3<i32>(52129i, global0.x, -2147483647i)))));
    var var_1 = 0i;
    var var_2 = true;
    global0 = var_0;
    global4 = Struct_2(!(!(!(!global4.a))), Struct_1(global2.d.x, true, false, _wgslsmith_div_vec4_f32(global2.e.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2.c.d, global4.b.d)))));
    return _wgslsmith_f_op_f32(select(global2.e.d.x, global2.e.d.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = Struct_1(_wgslsmith_dot_vec2_u32(global2.d, _wgslsmith_mod_vec2_u32(~global2.d, vec2<u32>(4294967295u, 4294967295u) << (vec2<u32>(global2.d.x, global2.c.a) % vec2<u32>(32u)))), !(-51531i >= ~_wgslsmith_mod_i32(global0.x, u_input.a.x)), (4294967295u != global4.b.a) || !any(vec3<bool>(global2.a, true, global2.e.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global4.b.d.x), _wgslsmith_f_op_f32(-global4.b.d.x), global4.b.d.x, _wgslsmith_f_op_f32(abs(global2.b)))) * vec4<f32>(global2.b, global2.c.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(min(-1464f, -450f))), global2.e.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * -2048f) * global2.e.d.x), global2.e.d.x);
}

