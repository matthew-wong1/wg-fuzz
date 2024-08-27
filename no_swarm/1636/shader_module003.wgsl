struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), true, vec4<i32>(2147483647i, 0i, 2147483647i, 1i), vec3<bool>(false, false, true));

var<private> global1: u32 = 42036u;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<bool>(false, false), true, vec4<i32>(-39782i, -28909i, -1i, 39649i), vec3<bool>(false, true, false)), Struct_1(vec2<bool>(false, true), true, vec4<i32>(24277i, -4884i, 12873i, 2147483647i), vec3<bool>(false, false, false)), Struct_1(vec2<bool>(false, true), true, vec4<i32>(28882i, -12309i, -1i, -234i), vec3<bool>(false, false, false)), Struct_1(vec2<bool>(false, false), false, vec4<i32>(i32(-2147483648), -26686i, i32(-2147483648), -14567i), vec3<bool>(false, false, true)), Struct_1(vec2<bool>(true, true), false, vec4<i32>(37750i, 1i, 1i, 1i), vec3<bool>(false, false, false)), Struct_1(vec2<bool>(false, true), false, vec4<i32>(1i, -6435i, 0i, -28705i), vec3<bool>(false, true, false)), Struct_1(vec2<bool>(true, false), true, vec4<i32>(2147483647i, -21133i, 1i, 1i), vec3<bool>(false, true, true)), Struct_1(vec2<bool>(false, true), false, vec4<i32>(i32(-2147483648), -15007i, i32(-2147483648), -36745i), vec3<bool>(false, false, false)), Struct_1(vec2<bool>(true, false), true, vec4<i32>(13229i, -1i, -1i, -41390i), vec3<bool>(false, false, false)), Struct_1(vec2<bool>(true, true), false, vec4<i32>(1i, -18865i, 13413i, -10292i), vec3<bool>(true, false, false)), Struct_1(vec2<bool>(true, true), false, vec4<i32>(-32602i, 23331i, i32(-2147483648), i32(-2147483648)), vec3<bool>(true, true, false)), Struct_1(vec2<bool>(true, true), true, vec4<i32>(28045i, -1i, -24387i, -1i), vec3<bool>(true, false, false)));

var<private> global3: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    return global0.c.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<f32> {
    let var_0 = arg_1.x;
    let var_1 = global2[_wgslsmith_index_u32(17278u, 12u)];
    let var_2 = Struct_1(vec2<bool>(true & (~(-1i) != u_input.a), arg_0.c.x >= _wgslsmith_mult_i32(arg_0.c.x, global0.c.x)), 20477u == (~select(24881u, 0u, true) | reverseBits(~1u)), min(var_1.c | select(vec4<i32>(-33177i, 2147483647i, 31542i, global3.c.x) ^ global3.c, countOneBits(global3.c), !var_1.b), arg_0.c), var_1.d);
    var var_3 = _wgslsmith_mod_vec2_i32(-_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(var_2.c.wx, ~arg_0.c.ww), max(vec2<i32>(arg_0.c.x, global0.c.x), vec2<i32>(var_2.c.x, u_input.a))), reverseBits(~(~var_2.c.zx)));
    global3 = var_2;
    return _wgslsmith_f_op_vec2_f32(-arg_1);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(vec2<bool>(any(arg_1.d), false), false, _wgslsmith_mod_vec4_i32(select(vec4<i32>(-34116i, 1i, reverseBits(arg_1.c.x), -u_input.b.x), min(countOneBits(vec4<i32>(arg_1.c.x, u_input.b.x, -1i, 1i)), vec4<i32>(2147483647i, 0i, 0i, global0.c.x)), true), min(-(~arg_1.c), vec4<i32>(select(3608i, 34991i, true), abs(2147483647i), global3.c.x, ~global0.c.x))), select(!select(vec3<bool>(global0.d.x, true, global3.a.x), vec3<bool>(false, arg_2.a.x, arg_1.a.x), false), select(global0.d, !global0.d, true), !arg_1.d));
    let var_1 = Struct_1(var_0.d.yx, true, abs(min(_wgslsmith_div_vec4_i32(global0.c, _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_0.c.x, var_0.c.x, -2147483647i), vec4<i32>(var_0.c.x, -2147483647i, arg_1.c.x, arg_1.c.x))), max(vec4<i32>(0i, -1i, arg_2.c.x, -1i), arg_1.c) >> (~vec4<u32>(56922u, 1322u, 4294967295u, 69075u) % vec4<u32>(32u)))), select(vec3<bool>(arg_2.b, arg_1.a.x, true), global0.d, vec3<bool>(any(select(vec4<bool>(var_0.d.x, var_0.b, global3.b, false), vec4<bool>(var_0.b, arg_1.b, global3.d.x, true), vec4<bool>(global3.a.x, false, false, var_0.d.x))), _wgslsmith_f_op_f32(step(997f, 151f)) >= 844f, true)));
    var var_2 = Struct_1(select(global0.a, !var_0.a, any(vec2<bool>(true, global3.b))), (global0.c.x ^ global0.c.x) > 0i, vec4<i32>(max(min(-16562i, global0.c.x), var_1.c.x), _wgslsmith_mod_i32(arg_1.c.x, 0i), 1i, select(u_input.a, _wgslsmith_dot_vec4_i32(reverseBits(var_0.c), vec4<i32>(0i, 0i, u_input.b.x, 52933i)), arg_2.a.x)), select(select(vec3<bool>(!var_0.a.x, true, global3.b), !var_0.d, any(select(global3.d, vec3<bool>(false, arg_2.d.x, arg_1.b), vec3<bool>(var_0.a.x, true, global3.a.x)))), var_1.d, _wgslsmith_div_i32(-arg_2.c.x, -var_0.c.x) != (min(u_input.b.x, 23130i) & arg_2.c.x)));
    var var_3 = Struct_1(arg_2.a, arg_1.d.x, ~vec4<i32>(firstLeadingBit(-35685i), -11739i >> (firstTrailingBit(31397u) % 32u), arg_1.c.x, abs(-35239i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 61850u), vec4<u32>(1u, 0u, 1u, 0u)) % 32u)), global3.d);
    var var_4 = 4294967295u;
    return ~(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(18543u, 1u, 12600u, 17060u), vec4<u32>(4294967295u, 0u, 24160u, 17655u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<u32>(1u, ~37771u, abs(71552u), ~0u)));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    global2 = array<Struct_1, 12>();
    let var_0 = !global0.d.x;
    global3 = global2[_wgslsmith_index_u32(~4294967295u, 12u)];
    global3 = global2[_wgslsmith_index_u32(~(func_4(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(global3.d.xx, true, vec4<i32>(global3.c.x, 1i, 2147483647i, -46323i), vec3<bool>(global0.a.x, var_0, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1665f, 1123f)))), Struct_1(global3.d.xz, true | global3.a.x, global0.c, select(global3.d, vec3<bool>(false, global0.d.x, true), true)), global2[_wgslsmith_index_u32(4294967295u >> (arg_1 % 32u), 12u)]) ^ func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(285f, 1000f)) - vec2<f32>(-647f, 388f)), global2[_wgslsmith_index_u32(~arg_1, 12u)], Struct_1(global0.a, 1u == arg_1, countOneBits(global0.c), vec3<bool>(true, false, false)))), 12u)];
    let var_1 = !select(vec2<bool>(true, global3.d.x | true), !(!global0.d.zy), !var_0);
    return Struct_1(select(select(vec2<bool>(true, true), global3.d.xz, any(vec3<bool>(var_1.x, global0.d.x, global3.b))), !var_1, global0.d.yx), all(!select(vec4<bool>(var_1.x, global3.a.x, global0.b, false), vec4<bool>(false, true, true, var_0), vec4<bool>(global0.a.x, true, global3.a.x, false))) || (select(all(global0.d), any(global0.d.xy), true) && true), _wgslsmith_sub_vec4_i32(select(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(global0.c, global0.c), vec4<i32>(u_input.b.x, 60505i, arg_0, -1i), ~global0.c), vec4<i32>(~u_input.a, global0.c.x, i32(-1i) * -36637i, -u_input.b.x), _wgslsmith_dot_vec4_i32(global3.c, global3.c) <= -2147483647i), vec4<i32>(min(arg_0, u_input.a) ^ _wgslsmith_dot_vec2_i32(global0.c.yy, global3.c.yw), global3.c.x, -33215i, arg_0)), vec3<bool>(var_0, !any(!vec4<bool>(global3.b, true, true, var_1.x)), all(!select(vec4<bool>(var_0, true, var_1.x, false), vec4<bool>(global3.b, var_1.x, var_1.x, false), vec4<bool>(false, var_1.x, var_0, global3.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_2(~func_1(vec3<bool>(global3.d.x, !global3.d.x, true)), 1u);
    global1 = 17380u ^ select(~_wgslsmith_div_u32(1u, _wgslsmith_add_u32(4294967295u, 0u)), _wgslsmith_sub_u32(abs(59234u), 1u) & func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1493f, -1257f)), global2[_wgslsmith_index_u32(~31506u, 12u)], Struct_1(global0.a, false, global0.c, global0.d)), global0.a.x);
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(~abs(~4294967295u)), 1u), 12u)];
    global2 = array<Struct_1, 12>();
    var var_1 = ~abs(vec3<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 6445u, 1u), vec4<u32>(11448u, 44502u, 1u, 16741u))), ~34194u, firstTrailingBit(4294967295u) << (~0u % 32u)));
    var var_2 = _wgslsmith_clamp_i32(u_input.a, -(~1i), abs(u_input.a));
    var var_3 = vec3<bool>((8435i ^ u_input.b.x) < -var_0.c.x, true, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(abs(global3.c.yz), u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(-42757i, 0i), countOneBits(vec2<i32>(global3.c.x, var_0.c.x)))) <= _wgslsmith_mult_i32(global3.c.x, _wgslsmith_mod_i32(18014i, 2147483647i) & _wgslsmith_div_i32(-79022i, var_0.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(global3.c.yxy, select(-global3.c.xzz, abs(var_0.c.xxx), true)), global3.c.wwy), _wgslsmith_dot_vec2_u32(~var_1.yy, ~var_1.zy | var_1.yx) << (((~var_1.x << (firstLeadingBit(84659u) % 32u)) << (~var_1.x % 32u)) % 32u), var_0.c.x, abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, var_0.c.x, 1i), var_0.c.zxz << ((vec3<u32>(var_1.x, var_1.x, 0u) >> (vec3<u32>(91496u, 1u, 1623u) % vec3<u32>(32u))) % vec3<u32>(32u)))));
}

