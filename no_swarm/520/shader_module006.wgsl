struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 5>;

var<private> global2: array<Struct_2, 16>;

var<private> global3: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<i32>(-35889i, -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), -19455i), 1i), Struct_1(vec2<i32>(25656i, -31104i), vec3<i32>(272i, -1i, 2147483647i), 1i), Struct_1(vec2<i32>(-1i, 1i), vec3<i32>(-1i, 2147483647i, 1i), -1i), Struct_1(vec2<i32>(53626i, 47332i), vec3<i32>(7694i, 32854i, 20034i), -8539i), Struct_1(vec2<i32>(0i, 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), 62572i), Struct_1(vec2<i32>(1i, 1i), vec3<i32>(2147483647i, -23481i, 7528i), -1i), Struct_1(vec2<i32>(-1i, -11438i), vec3<i32>(45382i, 32503i, -1i), i32(-2147483648)), Struct_1(vec2<i32>(14002i, 2147483647i), vec3<i32>(-44379i, i32(-2147483648), -40979i), 1i), Struct_1(vec2<i32>(2147483647i, 62895i), vec3<i32>(2147483647i, -1i, 2147483647i), 1i), Struct_1(vec2<i32>(7827i, i32(-2147483648)), vec3<i32>(37504i, 2147483647i, -1983i), -39411i), Struct_1(vec2<i32>(31386i, 32886i), vec3<i32>(20373i, 2147483647i, -21566i), i32(-2147483648)), Struct_1(vec2<i32>(37641i, -1i), vec3<i32>(-51288i, 1i, i32(-2147483648)), i32(-2147483648)), Struct_1(vec2<i32>(0i, 57545i), vec3<i32>(-1i, 2147483647i, -15333i), -27599i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = true;
    var var_1 = ~vec4<i32>(u_input.b, ~(-(~global0.a.x)), _wgslsmith_mod_i32((-1454i << (0u % 32u)) ^ global0.b.x, countOneBits(global0.a.x | -2147483647i)), -54125i);
    var_1 = abs(vec4<i32>(-(~global0.b.x), -27883i, ~_wgslsmith_mult_i32(arg_0.a.x, 42390i), arg_0.b.x));
    let var_2 = -37744i;
    var var_3 = Struct_2((14515u >= _wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(47930u, 5u)], 15916u)) || any(!(!vec4<bool>(true, true, false, var_0))), Struct_1(arg_0.a, _wgslsmith_mod_vec3_i32(~select(vec3<i32>(global0.a.x, -75381i, arg_0.b.x), arg_0.b, vec3<bool>(false, false, true)), global0.b), -2147483647i));
    return -2147483647i;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    global0 = global3[_wgslsmith_index_u32(~4294967295u, 13u)];
    let var_0 = global2[_wgslsmith_index_u32(0u, 16u)];
    var var_1 = all(!(!(!select(vec4<bool>(var_0.a, var_0.a, arg_2, var_0.a), vec4<bool>(false, true, true, false), arg_0))));
    global3 = array<Struct_1, 13>();
    var var_2 = global3[_wgslsmith_index_u32(1u, 13u)];
    return Struct_1(_wgslsmith_clamp_vec2_i32(min(-vec2<i32>(var_0.b.c, 27619i), -vec2<i32>(1i, 62677i)), -_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(var_2.c, -1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(11746i, -11123i), vec2<i32>(1i, global0.a.x))), -vec2<i32>(-82572i | u_input.b, _wgslsmith_div_i32(0i, 2147483647i))), select(abs(vec3<i32>(func_3(var_0.b), _wgslsmith_add_i32(-1i, u_input.b), 59812i)), var_2.b, !(!select(vec3<bool>(arg_0, var_0.a, arg_2), vec3<bool>(false, arg_2, false), vec3<bool>(var_0.a, false, arg_2)))), _wgslsmith_sub_i32(~abs(i32(-1i) * -1i), _wgslsmith_add_i32(countOneBits(u_input.c), 0i)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    global3 = array<Struct_1, 13>();
    global0 = func_2(!(arg_1.a | !(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(71286u, 5u)], 5u)] < 79556u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-170f - _wgslsmith_f_op_f32(abs(1297f)))), _wgslsmith_f_op_f32(f32(-1f) * -1232f)), !arg_1.a);
    global2 = array<Struct_2, 16>();
    let var_0 = vec3<i32>(global0.c, _wgslsmith_div_i32(~_wgslsmith_mod_i32(arg_0.b.b.x & 17810i, 1i), 3906i), _wgslsmith_add_i32(func_2(true, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(282f, -830f))), !(!arg_0.a)).b.x, -global0.a.x));
    global0 = arg_0.b;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 16>();
    var var_0 = select(select(vec4<bool>(false, true, true | (global1[_wgslsmith_index_u32(1u, 5u)] != 1u), func_1(global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a.x, 5u)], 16u)], Struct_2(true, global3[_wgslsmith_index_u32(u_input.a.x, 13u)]))), vec4<bool>((global1[_wgslsmith_index_u32(0u, 5u)] <= global1[_wgslsmith_index_u32(u_input.a.x, 5u)]) && (global1[_wgslsmith_index_u32(4063u, 5u)] >= 22676u), true, u_input.a.x >= ~global1[_wgslsmith_index_u32(u_input.a.x, 5u)], true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false)), vec4<bool>(true, true, true, true))), select(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, select(u_input.b == global0.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 5u)] < 4050u, true), true), select(vec4<bool>(true, true, all(vec3<bool>(false, true, false)), u_input.b <= u_input.b), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false), ~global0.c >= reverseBits(global0.c)), any(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)))), !all(vec4<bool>(all(vec3<bool>(true, false, false)), true, true, true)));
    var var_1 = vec4<i32>(max(i32(-1i) * -22150i, _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(1i), _wgslsmith_dot_vec3_i32(global0.b, global0.b), _wgslsmith_div_i32(-30648i, 25656i)), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.c, global0.b.x, global0.c) << (u_input.a.xyy % vec3<u32>(32u)), global0.b & global0.b))), func_2(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(876f, 1185f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-199f, 322f))), false)) + vec2<f32>(_wgslsmith_f_op_f32(abs(1937f)), _wgslsmith_f_op_f32(245f - -254f))), false).b.x, 0i, max(abs(2147483647i), -(~(~18820i))));
    var var_2 = Struct_1(vec2<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.c, u_input.b, global0.c, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 39324i, 1i, u_input.c), vec4<i32>(global0.b.x, var_1.x, -16368i, global0.b.x))), ~u_input.c)), -vec3<i32>(global0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(global0.b.x, 0i)), u_input.c), 0i);
    let var_3 = global3[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(~firstLeadingBit(0u), 16941u, max(~u_input.a.x, 0u))), 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(abs(_wgslsmith_mod_vec3_u32(u_input.a.zwx, u_input.a.yww))));
}

