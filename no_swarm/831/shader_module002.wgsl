struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(34608u, 684u, 11296u), vec3<u32>(73569u, 4294967295u, 52959u), vec3<u32>(15778u, 4294967295u, 34272u), vec3<u32>(20894u, 11036u, 5435u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(113305u, 4294967295u, 1u), vec3<u32>(4294967295u, 4841u, 105701u), vec3<u32>(1u, 0u, 0u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 14593u, 4294967295u), vec3<u32>(0u, 16337u, 1u), vec3<u32>(15360u, 4294967295u, 44044u), vec3<u32>(4294967295u, 1u, 16942u), vec3<u32>(47229u, 0u, 24551u), vec3<u32>(14683u, 55256u, 1u), vec3<u32>(1u, 1u, 58087u), vec3<u32>(38223u, 21291u, 4294967295u), vec3<u32>(49662u, 15354u, 241u), vec3<u32>(1u, 88302u, 4294967295u), vec3<u32>(61928u, 456u, 4294967295u), vec3<u32>(83972u, 1u, 2170u), vec3<u32>(3258u, 67442u, 0u), vec3<u32>(0u, 4294967295u, 1083u), vec3<u32>(0u, 31058u, 28301u), vec3<u32>(9407u, 0u, 0u), vec3<u32>(1u, 30055u, 0u), vec3<u32>(0u, 43060u, 0u), vec3<u32>(1u, 52840u, 1u));

var<private> global1: array<f32, 24> = array<f32, 24>(-185f, -260f, -1000f, -916f, 547f, -783f, -638f, 2497f, -2158f, -1000f, -162f, 1479f, -130f, -221f, -431f, 1705f, -1069f, -2393f, 769f, -1000f, 1247f, 274f, -677f, 565f);

var<private> global2: vec3<u32> = vec3<u32>(39273u, 4294967295u, 7475u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> u32 {
    let var_0 = abs(firstTrailingBit((reverseBits(global2.zz) ^ abs(vec2<u32>(81283u, 48779u))) ^ vec2<u32>(~4294967295u, 0u)));
    global2 = vec3<u32>(~(~abs(global2.x) & var_0.x), _wgslsmith_div_u32(u_input.b, _wgslsmith_clamp_u32(51806u, select(53771u, global2.x, true), 1u >> (_wgslsmith_sub_u32(var_0.x, var_0.x) % 32u))), ~_wgslsmith_mod_u32(0u, ~var_0.x) >> (~(~_wgslsmith_div_u32(global2.x, global2.x)) % 32u));
    var var_1 = _wgslsmith_add_vec2_u32(~(firstTrailingBit(vec2<u32>(2354u, var_0.x)) | ~vec2<u32>(u_input.b, global2.x)), firstLeadingBit(abs(var_0) & ~global2.yy) << (~(~(~global2.xx)) % vec2<u32>(32u)));
    let var_2 = ~_wgslsmith_mult_u32(firstLeadingBit(~(var_0.x | var_1.x)), var_0.x >> (~54722u % 32u));
    let var_3 = vec2<i32>(firstLeadingBit(u_input.a), -1i);
    return var_1.x;
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.b;
    global2 = ~(~global0[_wgslsmith_index_u32(1u, 29u)]);
    global2 = global0[_wgslsmith_index_u32(u_input.b, 29u)];
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_3(_wgslsmith_add_vec3_i32(-vec3<i32>(55081i, u_input.a, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-2147483647i, -1i, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 24u)]) * _wgslsmith_div_f32(global1[_wgslsmith_index_u32(33882u, 24u)], global1[_wgslsmith_index_u32(84176u, 24u)]))), 1u), 24u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-399f, global1[_wgslsmith_index_u32(~4294967295u, 24u)]) * vec2<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(1u, 24u)])), 637f))), Struct_1(_wgslsmith_mod_u32(~global2.x, ~(8917u & u_input.b))));
    let var_2 = reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(abs(global2.x), u_input.b, 0u, var_0), select(~vec4<u32>(1u, 1u, u_input.b, u_input.b), abs(vec4<u32>(var_0, global2.x, var_1.c.a, var_1.c.a)), vec4<bool>(true, true, true, true)) ^ ~reverseBits(vec4<u32>(49931u, var_0, global2.x, var_1.c.a))));
    return Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b, 24u)], global1[_wgslsmith_index_u32(var_2, 24u)])))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(112009u, 24u)], var_1.a)), -278f))))), Struct_1(var_2));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_1) -> vec2<i32> {
    global0 = array<vec3<u32>, 29>();
    let var_0 = 506f;
    var var_1 = _wgslsmith_f_op_vec2_f32(step(arg_0.b, _wgslsmith_f_op_vec2_f32(-arg_0.b)));
    var var_2 = -604f;
    global0 = array<vec3<u32>, 29>();
    return _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(1i, 1i), vec2<i32>(u_input.a, 0i), true), (vec2<i32>(arg_1.a, arg_1.a) & vec2<i32>(-23865i, arg_1.a)) | select(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(2147483647i, u_input.a), vec2<bool>(true, true))) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(0i, arg_1.a)) << ((48463u >> (u_input.b % 32u)) % 32u), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_mult_i32(u_input.a, arg_1.a))), _wgslsmith_mod_vec2_i32(reverseBits(select(min(vec2<i32>(25456i, 1i), vec2<i32>(arg_1.a, 2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-37319i, u_input.a)), true)), _wgslsmith_mult_vec2_i32(vec2<i32>(-32004i, -12748i), -vec2<i32>(u_input.a, arg_1.a)) >> (min(countOneBits(vec2<u32>(arg_0.c.a, arg_2.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.c.a, arg_0.c.a), global2.yy)) % vec2<u32>(32u))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: u32, arg_3: bool) -> vec4<bool> {
    let var_0 = select(func_4(func_2(), Struct_4(1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(633f, global1[_wgslsmith_index_u32(4294967295u, 24u)], arg_0.x, 587f) - vec4<f32>(-826f, -1359f, -878f, arg_0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2078f, -569f, arg_0.x, global1[_wgslsmith_index_u32(arg_2, 24u)]) - vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1000f))), vec3<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(global2.x, 24u)], -565f)), arg_0.x, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.b, 24u)])))), func_2().c), vec2<i32>(0i, arg_1) ^ (vec2<i32>(1i, i32(-1i) * -10203i) >> (_wgslsmith_clamp_vec2_u32(global2.zy | global2.yz, vec2<u32>(71012u, 25602u), global2.yy) % vec2<u32>(32u))), any(select(!(!vec4<bool>(arg_3, arg_3, false, false)), select(select(vec4<bool>(arg_3, arg_3, arg_3, false), vec4<bool>(true, true, arg_3, arg_3), arg_3), vec4<bool>(arg_3, false, true, false), select(vec4<bool>(true, arg_3, true, false), vec4<bool>(false, true, arg_3, true), vec4<bool>(arg_3, false, arg_3, arg_3))), !select(vec4<bool>(false, true, true, false), vec4<bool>(arg_3, false, arg_3, false), arg_3))));
    global1 = array<f32, 24>();
    global1 = array<f32, 24>();
    global1 = array<f32, 24>();
    var var_1 = _wgslsmith_mult_vec3_u32(~firstTrailingBit(min(vec3<u32>(68915u, 1u, 17938u), ~vec3<u32>(arg_2, 37713u, 60837u))), global0[_wgslsmith_index_u32(arg_2, 29u)]);
    return !vec4<bool>(true, all(!select(vec2<bool>(false, false), vec2<bool>(arg_3, false), arg_3)), true, !(!(!arg_3)));
}

fn func_5(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.b, 24u)], vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 24u)] * global1[_wgslsmith_index_u32(firstTrailingBit(global2.x), 24u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(689f)), global1[_wgslsmith_index_u32(global2.x, 24u)], false))), func_2().c);
    var var_1 = func_2();
    global1 = array<f32, 24>();
    global0 = array<vec3<u32>, 29>();
    var var_2 = Struct_4(2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 107f, 715f, -934f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, global1[_wgslsmith_index_u32(var_1.c.a, 24u)], var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1293f, global1[_wgslsmith_index_u32(u_input.b, 24u)], var_0.b.x, var_1.a) - vec4<f32>(-1000f, -918f, 544f, var_1.a))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -281f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x))) - 2304f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, global1[_wgslsmith_index_u32(0u, 24u)], false))) - -115f)));
    return Struct_2(204f, _wgslsmith_f_op_vec2_f32(vec2<f32>(-2467f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(265f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 24u)] + 1686f))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_2.c.xy)) * var_0.b)))), Struct_1(5455u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var_0 = !any(vec2<bool>(true, true));
    let var_1 = 1864f;
    let var_2 = func_5(!select(select(func_1(vec2<f32>(var_1, 1000f), -24550i, global2.x, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, select(false, false, true), true, true), all(vec4<bool>(true, true, true, true))));
    let var_3 = vec2<f32>(-1073f, -1850f);
    global2 = countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(abs(abs(var_2.c.a)), ~global2.x, u_input.b), global0[_wgslsmith_index_u32(global2.x >> ((15554u >> ((27576u | global2.x) % 32u)) % 32u), 29u)]));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, -1000f) - vec2<f32>(-808f, 342f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

