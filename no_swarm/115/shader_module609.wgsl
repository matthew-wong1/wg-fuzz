struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec4<u32>(1u, 18454u, 105367u, 32892u)), Struct_2(vec4<u32>(51791u, 7083u, 44065u, 0u)));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 1213f, vec4<bool>(false, false, true, false), vec2<bool>(true, false));

var<private> global2: f32;

var<private> global3: vec3<u32>;

var<private> global4: bool = true;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = arg_0;
    return ~global3.x;
}

fn func_3() -> i32 {
    global0 = array<Struct_2, 2>();
    global4 = true;
    let var_0 = select(countOneBits(reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.a.x, -29422i), vec2<i32>(-25352i, 2147483647i)))), vec2<i32>(global1.a.x, 1i), global1.b >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + _wgslsmith_f_op_f32(abs(-234f)))) & ~firstTrailingBit(vec2<i32>(11157i, 1i));
    let var_1 = max(_wgslsmith_clamp_i32(select(~(-1i), -78658i, false) >> (global3.x % 32u), 5220i, firstLeadingBit(global1.a.x)), ~countOneBits(1i));
    global4 = !(~global3.x <= 0u);
    return -global1.a.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = vec3<u32>(~countOneBits(func_2(Struct_1(arg_3.a, 166f, arg_2, vec2<bool>(true, true)), true)), arg_1.x, 14255u);
    let var_1 = Struct_3(Struct_2(~firstTrailingBit(~vec4<u32>(18027u, 14979u, 0u, arg_1.x))));
    var var_2 = var_1;
    var var_3 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x | min(-23889i, u_input.b.x), arg_0.x), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), func_3()), vec2<i32>(~arg_3.a.x, _wgslsmith_sub_i32(arg_0.x, -21744i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(906f))))) + _wgslsmith_f_op_f32(step(arg_3.b, _wgslsmith_f_op_f32(-arg_3.b)))), select(!vec4<bool>(any(vec3<bool>(arg_2.x, arg_2.x, true)), arg_2.x, false, true), select(select(!vec4<bool>(false, arg_3.c.x, arg_2.x, arg_3.c.x), !vec4<bool>(arg_2.x, global1.d.x, true, false), false), !select(global1.c, vec4<bool>(global1.c.x, arg_2.x, arg_2.x, global1.c.x), arg_3.d.x), true), arg_2), !select(select(select(vec2<bool>(false, true), vec2<bool>(arg_2.x, false), vec2<bool>(true, true)), vec2<bool>(arg_2.x, true), vec2<bool>(true, global1.d.x)), !select(global1.d, arg_2.yy, true), !global1.d));
    let var_4 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(abs(19000u), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.a.a.x, 4355u, 54559u), ~vec3<u32>(7268u, 1u, 1u))), 2808u), ~((~vec2<u32>(var_1.a.a.x, var_2.a.a.x) << (reverseBits(vec2<u32>(43110u, 0u)) % vec2<u32>(32u))) >> (abs(abs(vec2<u32>(var_0.x, var_0.x))) % vec2<u32>(32u))), select(~(~vec2<u32>(69433u, global3.x)), vec2<u32>(firstTrailingBit(1u), min(var_0.x, arg_1.x)), vec2<bool>(false, false)));
    return Struct_2(~firstTrailingBit(var_2.a.a << (vec4<u32>(17074u, global3.x, var_1.a.a.x, 96041u) % vec4<u32>(32u))) >> (~_wgslsmith_sub_vec4_u32(~var_2.a.a, vec4<u32>(var_1.a.a.x, var_4.x, 8766u, var_4.x)) % vec4<u32>(32u)));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = Struct_3(func_1(vec3<i32>(global1.a.x, firstLeadingBit(~global1.a.x), 2147483647i), _wgslsmith_sub_vec3_u32(arg_2.a.xzx, arg_2.a.wwy), !vec4<bool>(true, select(true, false, global1.c.x), global1.c.x, global1.d.x), Struct_1(_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-1i, -22874i)), u_input.b.xx >> (vec2<u32>(16249u, global3.x) % vec2<u32>(32u))), _wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(f32(-1f) * -1083f))), global1.c, global1.d)));
    var var_1 = global1.c.xz;
    var var_2 = global0[_wgslsmith_index_u32(28644u, 2u)];
    global3 = _wgslsmith_div_vec3_u32(vec3<u32>(select(~59377u, global3.x, true), 5669u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.a.x, 1u, 1u), vec3<u32>(global3.x, 104966u, 89899u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.a.x, 1431u, var_0.a.a.x), arg_2.a.xzw))), vec3<u32>(~(~0u), 13073u, var_2.a.x)) << (~abs(vec3<u32>(3040u, 1u, 39471u)) % vec3<u32>(32u));
    var var_3 = vec4<i32>(global1.a.x >> (18777u % 32u), -17862i, u_input.a, u_input.a) & (_wgslsmith_mod_vec4_i32(u_input.b, _wgslsmith_add_vec4_i32(-u_input.b, max(vec4<i32>(66835i, -17857i, global1.a.x, global1.a.x), vec4<i32>(global1.a.x, u_input.b.x, global1.a.x, global1.a.x)))) | u_input.b);
    return var_0.a.a;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global3 = func_4(-918f, 907f, Struct_2(reverseBits(_wgslsmith_mod_vec4_u32(arg_0.a, arg_0.a & vec4<u32>(4294967295u, arg_0.a.x, global3.x, 4294967295u))))).zwz;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, arg_2.b) * _wgslsmith_f_op_f32(arg_2.b + _wgslsmith_f_op_f32(ceil(arg_2.b))));
    let var_0 = Struct_3(func_1(_wgslsmith_mult_vec3_i32(u_input.b.xzx, u_input.b.wyx), arg_0.a.zwy, vec4<bool>(global1.d.x & arg_2.d.x, arg_2.c.x, true, all(vec2<bool>(global1.c.x, false))), Struct_1(vec2<i32>(func_3(), arg_2.a.x), -829f, arg_2.c, vec2<bool>(true, arg_2.d.x))));
    var var_1 = _wgslsmith_dot_vec3_i32(u_input.b.wyx, u_input.b.ywz);
    var var_2 = ~20778u;
    return Struct_1(_wgslsmith_mod_vec2_i32(~(-(global1.a & arg_2.a)), firstTrailingBit(u_input.b.zx) << (~(global3.xx | global3.yz) % vec2<u32>(32u))), -1653f, select(vec4<bool>(all(vec3<bool>(arg_2.c.x, true, true)) || select(global1.d.x, arg_2.c.x, true), false, true, global1.d.x), global1.c, false), arg_2.c.yy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(Struct_2(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 1u, global3.x, 29565u), func_4(141f, global1.b, func_1(u_input.b.zzw, vec3<u32>(global3.x, 44393u, 118839u), global1.c, Struct_1(global1.a, global1.b, global1.c, global1.d))))), -273f, Struct_1(-select(u_input.b.yw << (global3.zz % vec2<u32>(32u)), u_input.b.wz, !vec2<bool>(global1.d.x, global1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1809f)), vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(global1.d.x, global1.d.x, true), false)), any(!vec4<bool>(global1.d.x, true, global1.d.x, global1.c.x)), true, global1.c.x & true), vec2<bool>(!(77956u > global3.x), true)), _wgslsmith_f_op_f32(-global1.b));
    let var_0 = func_1(u_input.b.wzz, vec3<u32>(~(~_wgslsmith_add_u32(global3.x, 69028u)), global3.x, 87818u), func_5(func_1(vec3<i32>(global1.a.x, -global1.a.x, 4494i), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(global3.x, global3.x, global3.x)), firstTrailingBit(vec3<u32>(4294967295u, global3.x, 1u)), vec3<u32>(23405u, 0u, global3.x)), !global1.c, Struct_1(vec2<i32>(global1.a.x, global1.a.x), global1.b, vec4<bool>(global1.c.x, false, global1.c.x, false), select(vec2<bool>(true, global1.d.x), global1.c.ww, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global1.b, global1.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.b)), _wgslsmith_f_op_f32(-global1.b))), func_5(func_1(~vec3<i32>(-2147483647i, -17253i, 0i), _wgslsmith_div_vec3_u32(vec3<u32>(1u, global3.x, global3.x), vec3<u32>(global3.x, global3.x, 4294967295u)), vec4<bool>(global1.d.x, false, false, false), Struct_1(vec2<i32>(-1i, 0i), global1.b, vec4<bool>(true, global1.c.x, global1.d.x, false), global1.d)), -948f, Struct_1(reverseBits(u_input.b.zz), _wgslsmith_f_op_f32(floor(global1.b)), func_5(global0[_wgslsmith_index_u32(global3.x, 2u)], global1.b, Struct_1(vec2<i32>(-17373i, 28590i), -555f, global1.c, vec2<bool>(false, true)), -142f).c, !global1.c.yx), _wgslsmith_f_op_f32(trunc(global1.b))), _wgslsmith_f_op_f32(round(func_5(global0[_wgslsmith_index_u32(global3.x, 2u)], _wgslsmith_f_op_f32(global1.b * 970f), func_5(Struct_2(vec4<u32>(global3.x, 24901u, 13561u, 6990u)), 355f, Struct_1(vec2<i32>(2147483647i, 0i), global1.b, global1.c, vec2<bool>(false, global1.d.x)), global1.b), _wgslsmith_f_op_f32(ceil(global1.b))).b))).c, Struct_1(u_input.b.zx & firstTrailingBit(vec2<i32>(global1.a.x, global1.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, 1000f) * _wgslsmith_f_op_f32(-global1.b)))), select(vec4<bool>(true, !global1.c.x, 1i > global1.a.x, all(global1.c)), global1.c, vec4<bool>(!global1.c.x, global1.c.x | global1.d.x, true, select(false, global1.c.x, true))), select(select(vec2<bool>(false, global1.c.x), select(global1.c.yx, vec2<bool>(false, global1.c.x), vec2<bool>(true, global1.c.x)), any(global1.c.wzx)), vec2<bool>(false, false), !select(global1.c.x, false, false)))).a;
    var var_1 = ~(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.x, var_0.x), var_0.x)) <= 28362u;
    var var_2 = 11318u;
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global1.b)))))), vec2<f32>(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(477f + global1.b)));
    global3 = select(vec3<u32>(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + -505f)), 2034f, func_1(_wgslsmith_sub_vec3_i32(u_input.b.yzw, vec3<i32>(global1.a.x, u_input.a, u_input.a)), ~var_0.zww, !global1.c, Struct_1(vec2<i32>(37954i, -1i), 207f, global1.c, global1.d))).x, (global3.x | ~global3.x) & countOneBits(1459u), _wgslsmith_div_u32(_wgslsmith_div_u32(27943u, func_4(-589f, -1526f, global0[_wgslsmith_index_u32(25702u, 2u)]).x), func_4(_wgslsmith_f_op_f32(1175f * global1.b), global1.b, global0[_wgslsmith_index_u32(firstLeadingBit(var_0.x), 2u)]).x)), _wgslsmith_add_vec3_u32(var_0.yzw, func_1(_wgslsmith_div_vec3_i32(min(vec3<i32>(global1.a.x, 1i, 1i), u_input.b.zwy), min(vec3<i32>(0i, -2147483647i, u_input.b.x), vec3<i32>(-2147483647i, 1i, global1.a.x))), var_0.ywz, global1.c, Struct_1(~global1.a, global1.b, !vec4<bool>(true, global1.c.x, true, true), vec2<bool>(false, false))).a.xyw), any(global1.c.yxx));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(global1.a.x, _wgslsmith_clamp_i32(global1.a.x | 9686i, ~global1.a.x, -global1.a.x)), -363f, func_3(), _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(global3.x, 4294967295u), _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(global3.x | 4294967295u, var_0.x, global3.x, 32199u))));
}

