struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(39960i, 14730u), Struct_1(-17971i, 0u), Struct_1(i32(-2147483648), 1u), Struct_1(0i, 0u), Struct_1(12381i, 1u), Struct_1(7877i, 67378u), Struct_1(-1i, 0u), Struct_1(-34627i, 1u), Struct_1(1i, 59596u), Struct_1(-28305i, 4294967295u), Struct_1(69289i, 4294967295u), Struct_1(i32(-2147483648), 1278u), Struct_1(40558i, 0u), Struct_1(-24110i, 1u), Struct_1(17069i, 13297u), Struct_1(2540i, 56153u), Struct_1(2147483647i, 20688u), Struct_1(-64281i, 1u));

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(false, vec3<i32>(3652i, 1i, 5044i), Struct_1(41171i, 4294967295u)), Struct_2(false, vec3<i32>(0i, 2147483647i, -1i), Struct_1(i32(-2147483648), 1u)), Struct_2(false, vec3<i32>(0i, 24516i, 2147483647i), Struct_1(17175i, 61545u)), Struct_2(false, vec3<i32>(13302i, -11656i, 0i), Struct_1(12668i, 4294967295u)), Struct_2(false, vec3<i32>(-62935i, 10845i, 8712i), Struct_1(i32(-2147483648), 1u)), Struct_2(false, vec3<i32>(-3760i, 2147483647i, 24428i), Struct_1(-26381i, 0u)), Struct_2(true, vec3<i32>(-47474i, 2147483647i, 13883i), Struct_1(32864i, 1u)), Struct_2(false, vec3<i32>(2147483647i, 46686i, 9547i), Struct_1(1i, 0u)));

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(false, vec3<i32>(1i, -20386i, -18497i), Struct_1(-1i, 17730u)), Struct_2(true, vec3<i32>(0i, -757i, 0i), Struct_1(2147483647i, 62382u)), Struct_2(false, vec3<i32>(11301i, -11679i, 0i), Struct_1(34308i, 50091u)), Struct_2(true, vec3<i32>(2147483647i, 2147483647i, 53535i), Struct_1(i32(-2147483648), 4294967295u)), Struct_2(true, vec3<i32>(23396i, 2147483647i, 33717i), Struct_1(60513i, 4294967295u)));

var<private> global3: array<u32, 28>;

var<private> global4: array<f32, 9>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32) -> vec3<u32> {
    var var_0 = global0[_wgslsmith_index_u32(~71010u, 18u)];
    var var_1 = global0[_wgslsmith_index_u32(59220u, 18u)];
    let var_2 = global0[_wgslsmith_index_u32(1u, 18u)];
    var var_3 = !select(vec4<bool>(var_0.a < _wgslsmith_sub_i32(-68288i, var_2.a), any(!vec4<bool>(false, true, true, arg_0)), true, false), select(select(!vec4<bool>(false, arg_0, true, false), !vec4<bool>(arg_0, true, false, true), vec4<bool>(false, arg_0, false, arg_0)), !select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0)), arg_0), !(!(!arg_0)));
    var var_4 = ~arg_1;
    return select(vec3<u32>(0u, 33854u, max(106487u, 1u)), vec3<u32>(var_0.b, 0u, 101449u), var_3.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: u32, arg_3: vec2<f32>) -> bool {
    var var_0 = Struct_1(select(-430i, 2147483647i, arg_1.x), 1u);
    global2 = array<Struct_2, 5>();
    var var_1 = arg_3.x;
    var var_2 = vec4<f32>(global4[_wgslsmith_index_u32(~(~1u), 9u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-644f, _wgslsmith_f_op_f32(sign(439f)), false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(u_input.a, 9u)], 282f, false))))))), _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(66674u, 9u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(arg_0.x, 9u)] + global4[_wgslsmith_index_u32(6190u, 9u)]))))));
    let var_3 = Struct_1(_wgslsmith_dot_vec2_i32(select(select(vec2<i32>(1i, 0i), vec2<i32>(var_0.a, -35846i), false), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a, 2147483647i), vec2<i32>(var_0.a, -2147483647i)), true) >> (abs(arg_0.yx | u_input.b) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, ~0i), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-12522i, 2147483647i), vec2<i32>(1i, var_0.a)), vec2<i32>(0i, var_0.a) << (vec2<u32>(43017u, global3[_wgslsmith_index_u32(arg_2, 28u)]) % vec2<u32>(32u))), -(vec2<i32>(0i, -44128i) ^ vec2<i32>(0i, var_0.a)))), ~_wgslsmith_mult_u32(~15283u, var_0.b));
    return !(all(select(!vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(false, true, arg_1.x, true), true)) | true);
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    global1 = array<Struct_2, 8>();
    var var_0 = !vec3<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), !func_4(func_3(false, arg_0.x), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), global3[_wgslsmith_index_u32(4294967295u, 28u)] ^ 0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1343f, global4[_wgslsmith_index_u32(4294967295u, 9u)]))), false);
    global4 = array<f32, 9>();
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(274f - global4[_wgslsmith_index_u32(1u, 9u)]) + _wgslsmith_f_op_f32(f32(-1f) * -129f))), _wgslsmith_f_op_f32(f32(-1f) * -610f), any(!select(vec3<bool>(true, var_0.x, true), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false)))))));
    let var_2 = false;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1554f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 28u)], 9u)]))) - global4[_wgslsmith_index_u32(~4294967295u, 9u)]), var_2 && all(vec2<bool>(true, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(6241u, 9u)] + global4[_wgslsmith_index_u32(69661u, 9u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * -446f)))))));
}

fn func_1() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(func_2(~firstTrailingBit(vec2<i32>(-8060i, _wgslsmith_clamp_i32(-11035i, -14829i, -309i)))));
    global0 = array<Struct_1, 18>();
    var var_1 = firstTrailingBit(vec2<i32>(1i, 1i));
    var var_2 = Struct_1(var_1.x, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(~10974u), 28u)], 28u)] << (47447u % 32u), 28u)]);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(u_input.b.x, 9u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_2.b, 9u)]))))));
    return max(abs(select(_wgslsmith_div_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 28u)], 1u, var_2.b), ~vec3<u32>(var_2.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(46722u, 28u)], 28u)], 28u)], 13613u)), abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 6988u, 0u), vec3<u32>(4294967295u, u_input.a, 0u))), true)), vec3<u32>(114334u, _wgslsmith_add_u32(95723u, u_input.b.x), ~(~1u)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(arg_1.a, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(min(vec3<i32>(1i, arg_2.a, arg_2.a), vec3<i32>(arg_2.a, arg_2.a, arg_2.a)), _wgslsmith_add_vec3_i32(arg_1.b, vec3<i32>(arg_1.b.x, 26135i, arg_1.b.x))), arg_1.b), _wgslsmith_mod_vec3_i32(~(arg_1.b ^ arg_1.b), -(~vec3<i32>(arg_1.c.a, -1i, arg_2.a)))), Struct_1(~countOneBits(1i), global3[_wgslsmith_index_u32(~(53194u & ~u_input.b.x), 28u)]));
    global4 = array<f32, 9>();
    let var_1 = var_0;
    let var_2 = Struct_2(arg_1.a, var_1.b & -(vec3<i32>(-1i) * -vec3<i32>(arg_2.a, arg_2.a, arg_2.a)), Struct_1(arg_1.c.a | -1i, _wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(28337u, 19863u), vec2<u32>(75260u, 75265u)), 28u)], var_1.c.b)));
    let var_3 = Struct_2(var_2.a, _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(arg_1.b, ~(-vec3<i32>(16287i, 16565i, -59443i))), vec3<i32>(-13613i | -var_1.b.x, ~(~(-13078i)), var_0.c.a)), var_1.c);
    return Struct_2(arg_1.a, arg_1.b, Struct_1(~abs(-1i), arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 5>();
    let var_0 = func_5(func_1() >> (_wgslsmith_clamp_vec3_u32(select(~vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(25338u, 28u)], global3[_wgslsmith_index_u32(29459u, 28u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7461u, 28u)], 28u)], 28u)], u_input.b.x, 0u), vec3<u32>(global3[_wgslsmith_index_u32(21602u, 28u)], 0u, 50910u)), vec3<bool>(true, true, true)), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, u_input.a, 0u)), ~vec3<u32>(0u, 4294967295u, u_input.a)), max(abs(vec3<u32>(5903u, global3[_wgslsmith_index_u32(u_input.a, 28u)], u_input.a)), select(vec3<u32>(global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 28u)], 28u)]), vec3<u32>(15018u, global3[_wgslsmith_index_u32(69666u, 28u)], global3[_wgslsmith_index_u32(51618u, 28u)]), true))) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(~4393u, 8u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~(40952u ^ global3[_wgslsmith_index_u32(62818u, 28u)])), 4294967295u, _wgslsmith_clamp_u32(~(~u_input.b.x), _wgslsmith_mult_u32(30896u, _wgslsmith_add_u32(1u, u_input.b.x)), ~33957u)), 18u)]);
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(u_input.b.x, 9u)], global4[_wgslsmith_index_u32(func_5(vec3<u32>(4294967295u, 1u, var_0.c.b) | vec3<u32>(var_0.c.b, u_input.a, var_0.c.b), Struct_2(var_0.a, vec3<i32>(1i, 1i, var_0.c.a), global0[_wgslsmith_index_u32(25522u, 18u)]), func_5(vec3<u32>(var_0.c.b, u_input.b.x, 28731u), Struct_2(var_0.a, var_0.b, global0[_wgslsmith_index_u32(1u, 18u)]), Struct_1(51301i, 0u)).c).c.b, 9u)])), _wgslsmith_f_op_f32(max(-235f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(7398u, 9u)], 108f)), _wgslsmith_f_op_f32(max(-465f, 698f))))), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.c.b ^ func_5(vec3<u32>(global3[_wgslsmith_index_u32(43816u, 28u)], u_input.a, 1u), Struct_2(var_0.a, var_0.b, Struct_1(var_0.b.x, 0u)), global0[_wgslsmith_index_u32(u_input.a, 18u)]).c.b, ~(~4294967295u)), 9u)]), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 9u)], -682f, global4[_wgslsmith_index_u32(u_input.a, 9u)])))))));
    var var_2 = func_5(vec3<u32>(3341u, ~4294967295u, reverseBits(global3[_wgslsmith_index_u32(var_0.c.b, 28u)])), Struct_2(var_0.a, var_0.b, Struct_1(-(~0i), 0u)), var_0.c).c;
    global4 = array<f32, 9>();
    global2 = array<Struct_2, 5>();
    let var_3 = -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a, var_0.c.a, var_0.b.x, 1i), vec4<i32>(-68052i, -12189i, var_0.c.a, var_2.a)), ~(~var_2.a), -1i, firstLeadingBit(-2147483647i)) ^ select(max(abs(firstTrailingBit(vec4<i32>(11619i, -38421i, var_0.c.a, var_0.c.a))), vec4<i32>(var_2.a, countOneBits(var_0.c.a), -1i, -1i)), -vec4<i32>(431i, -2147483647i, 7272i, var_0.b.x) >> (~select(vec4<u32>(41716u, global3[_wgslsmith_index_u32(61804u, 28u)], 4294967295u, 0u), vec4<u32>(1u, 11050u, 1u, u_input.b.x), var_0.a) % vec4<u32>(32u)), select(~(-1i) > (1i ^ var_0.c.a), true, all(!vec2<bool>(true, var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~var_3.yww), 2147483647i, var_0.c.a, 0u);
}

