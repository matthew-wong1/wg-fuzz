struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(true, true, false, false, true, false, false, false, false, false, false, true, true, false, true, false, false, false, true, false, false, true);

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(false, vec3<u32>(6597u, 1u, 11380u)), vec3<i32>(2147483647i, 0i, -42944i), 587f, Struct_1(true, vec3<u32>(56717u, 100578u, 83938u)), 1u), Struct_2(Struct_1(false, vec3<u32>(42663u, 16646u, 1u)), vec3<i32>(43558i, 20053i, 2147483647i), -1000f, Struct_1(false, vec3<u32>(4294967295u, 54241u, 0u)), 17569u), Struct_2(Struct_1(true, vec3<u32>(21034u, 27545u, 54206u)), vec3<i32>(-1i, 23666i, -28987i), 689f, Struct_1(false, vec3<u32>(0u, 4294967295u, 27275u)), 4294967295u));

var<private> global2: vec4<i32>;

var<private> global3: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<bool>) -> f32 {
    return arg_1.c;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3.a;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(55085u, 22u)], arg_3.d.a, true, true), vec4<bool>(true, false, var_0.a, false), global0[_wgslsmith_index_u32(var_0.b.x, 22u)])), Struct_2(arg_3.d, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, global2.x, -2147483647i), countOneBits(vec3<i32>(1i, 1i, -15831i))), _wgslsmith_f_op_f32(-194f * -206f), arg_3.a, ~arg_0.x), !(!(!vec3<bool>(var_0.a, false, var_0.a))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c) + -545f));
    global2 = u_input.a;
    global3 = ~24575u;
    global3 = select(firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.x, 35448u, 11869u), _wgslsmith_add_vec3_u32(vec3<u32>(10908u, arg_0.x, arg_3.d.b.x), min(var_0.b, arg_1)))), arg_0.x, false);
    return ~(-12083i);
}

fn func_1() -> Struct_1 {
    global2 = vec4<i32>(u_input.a.x, (min(_wgslsmith_sub_i32(u_input.a.x, global2.x), func_2(vec2<u32>(1u, 0u), vec3<u32>(4294967295u, 1u, 39228u), global2.yz, Struct_2(Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 22193u)), u_input.a.xwx, 853f, Struct_1(global0[_wgslsmith_index_u32(6233u, 22u)], vec3<u32>(44279u, 8654u, 4294967295u)), 4294967295u))) << (~1u % 32u)) << (4294967295u % 32u), max(-(~select(1i, global2.x, false)), global2.x), -20733i ^ _wgslsmith_mod_i32(0i, u_input.b));
    var var_0 = select(u_input.a.wyw, global2.zyx, !vec3<bool>(any(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(~(~9129u), 22u)], all(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(329f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(-121f, -715f))))));
    var_0 = -global2.wxx;
    var var_2 = Struct_2(Struct_1(select(any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], true)), false, true), vec3<u32>(reverseBits(4294967295u), 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(14834u, 67434u, 0u), vec3<u32>(1u, 1u, 1u)))), _wgslsmith_sub_vec3_i32(-u_input.a.ywx, vec3<i32>(global2.x, global2.x, global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1980f)), _wgslsmith_f_op_f32(min(-1000f, -604f))) - _wgslsmith_f_op_f32(-312f + _wgslsmith_f_op_f32(trunc(-126f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-524f * -342f))))), Struct_1(global0[_wgslsmith_index_u32(~(~firstLeadingBit(0u)), 22u)], ~vec3<u32>(~1u, ~1u, ~31545u)), 1u);
    return Struct_1(select(all(vec3<bool>(var_2.a.a, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d.b.x, var_2.a.b.x, 10599u, var_2.d.b.x), vec4<u32>(var_2.e, var_2.e, 79336u, 0u)), 22u)], var_2.d.a)), true, var_2.d.a), var_2.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -vec4<i32>(global2.x, ~(u_input.a.x << (abs(42214u) % 32u)), -11954i, ~global2.x);
    let var_0 = ~vec2<u32>(1u, 1u);
    let var_1 = func_1();
    var var_2 = countOneBits(vec2<i32>(abs(~(-1i)), u_input.a.x >> (select(countOneBits(370u), ~var_0.x, true) % 32u)));
    var var_3 = func_1();
    global3 = 4199u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1479f), _wgslsmith_f_op_f32(select(-303f, -713f, global0[_wgslsmith_index_u32(59100u, 22u)])), _wgslsmith_f_op_f32(floor(1107f)), _wgslsmith_f_op_f32(select(756f, -271f, global0[_wgslsmith_index_u32(var_0.x, 22u)]))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-249f, 1000f, 270f, -678f)))), max(_wgslsmith_dot_vec2_i32(global2.zz, -u_input.a.xy) & var_2.x, max(~27803i, _wgslsmith_mult_i32(~var_2.x, var_2.x | global2.x))), -(abs(vec3<i32>(24780i, 8851i, 2147483647i) | vec3<i32>(48100i, -2147483647i, var_2.x)) >> (select(max(vec3<u32>(110164u, 4294967295u, 1u), var_3.b), countOneBits(vec3<u32>(15666u, var_3.b.x, var_0.x)), select(true, true, var_3.a)) % vec3<u32>(32u))));
}

