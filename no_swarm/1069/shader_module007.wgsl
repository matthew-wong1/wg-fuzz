struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<i32>(-1i, 1i), vec4<bool>(false, true, true, true), true, vec2<bool>(true, false)), Struct_1(vec2<i32>(-16825i, 2147483647i), vec4<bool>(false, true, false, false), true, vec2<bool>(false, false)), Struct_1(vec2<i32>(-33415i, -35029i), vec4<bool>(false, false, false, true), false, vec2<bool>(true, false)), Struct_1(vec2<i32>(1i, -37935i), vec4<bool>(false, false, true, false), false, vec2<bool>(false, false)), Struct_1(vec2<i32>(-19707i, 0i), vec4<bool>(true, true, true, false), false, vec2<bool>(false, true)), Struct_1(vec2<i32>(2147483647i, -1i), vec4<bool>(true, true, false, false), true, vec2<bool>(true, false)), Struct_1(vec2<i32>(-21397i, 2147483647i), vec4<bool>(false, false, true, true), true, vec2<bool>(false, true)), Struct_1(vec2<i32>(-36017i, 395i), vec4<bool>(true, true, true, false), false, vec2<bool>(false, true)), Struct_1(vec2<i32>(-46742i, i32(-2147483648)), vec4<bool>(false, false, false, false), true, vec2<bool>(false, false)), Struct_1(vec2<i32>(16336i, -1i), vec4<bool>(true, false, false, false), true, vec2<bool>(true, false)), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec4<bool>(true, true, true, false), true, vec2<bool>(false, true)), Struct_1(vec2<i32>(6542i, i32(-2147483648)), vec4<bool>(true, false, true, true), false, vec2<bool>(true, false)), Struct_1(vec2<i32>(62203i, 2147483647i), vec4<bool>(true, true, false, false), true, vec2<bool>(false, false)), Struct_1(vec2<i32>(-19692i, 18814i), vec4<bool>(false, false, true, false), false, vec2<bool>(false, false)), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec4<bool>(false, true, false, false), true, vec2<bool>(true, false)), Struct_1(vec2<i32>(i32(-2147483648), -21891i), vec4<bool>(true, false, true, false), false, vec2<bool>(false, false)), Struct_1(vec2<i32>(0i, 14986i), vec4<bool>(false, true, true, false), true, vec2<bool>(false, false)), Struct_1(vec2<i32>(1424i, 1i), vec4<bool>(false, true, false, true), false, vec2<bool>(false, true)), Struct_1(vec2<i32>(9599i, -26873i), vec4<bool>(false, false, false, true), true, vec2<bool>(false, true)), Struct_1(vec2<i32>(-29482i, 1i), vec4<bool>(true, true, true, false), false, vec2<bool>(false, false)), Struct_1(vec2<i32>(1i, -20556i), vec4<bool>(false, true, false, true), false, vec2<bool>(true, false)), Struct_1(vec2<i32>(-41936i, -11976i), vec4<bool>(true, true, false, true), false, vec2<bool>(true, false)), Struct_1(vec2<i32>(9137i, -1i), vec4<bool>(true, false, true, true), true, vec2<bool>(false, false)));

var<private> global1: array<i32, 14> = array<i32, 14>(-19762i, -17220i, 2573i, 1i, -1i, 2147483647i, -27688i, -25493i, 9364i, 2147483647i, 31545i, -1i, 2147483647i, -1i);

var<private> global2: array<bool, 17> = array<bool, 17>(true, true, false, false, false, false, false, false, false, true, true, true, true, false, true, false, true);

var<private> global3: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    global0 = array<Struct_1, 23>();
    global2 = array<bool, 17>();
    global3 = global0[_wgslsmith_index_u32(9751u & u_input.a.x, 23u)];
    var var_0 = arg_0;
    return u_input.c.x;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: f32) -> u32 {
    var var_0 = global3.b.yzx;
    global3 = arg_0;
    var var_1 = vec3<bool>((_wgslsmith_add_u32(min(u_input.c.x, 21082u), ~arg_2) == 1u) || false, true, global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(1u, 49142u, u_input.a.x), func_2(arg_0, _wgslsmith_f_op_f32(ceil(arg_1)))), 17u)]);
    var var_2 = -vec2<i32>(-firstLeadingBit(-12310i), global3.a.x) >> (u_input.a.zz % vec2<u32>(32u));
    let var_3 = arg_2;
    return u_input.a.x;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = ~arg_0.wwy;
    global2 = array<bool, 17>();
    let var_1 = Struct_1(-(firstLeadingBit(vec2<i32>(-1i, 10727i)) << (~select(vec2<u32>(1u, u_input.c.x), u_input.c.xz, global3.b.x) % vec2<u32>(32u))), global3.b, !(!(!arg_1.d.x)), !global3.b.xx);
    let var_2 = Struct_1(var_1.a, vec4<bool>(var_1.c, true, arg_1.b.x && (!global3.b.x && (arg_1.d.x && global3.d.x)), -1i == ~(~u_input.e.x)), true, select(vec2<bool>(arg_1.c, all(select(vec3<bool>(arg_1.c, arg_1.d.x, false), global3.b.wwz, true))), global3.d, select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(46708u, 3767u), 17u)], arg_1.d.x), arg_1.b.xz)));
    let var_3 = global3.a.x;
    return vec3<bool>(var_2.c, arg_1.d.x, var_2.c);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 23u)];
    let var_1 = Struct_1(arg_1.zy & vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, u_input.d), var_0.a.x << (u_input.a.x % 32u)), -24354i), var_0.b, true, !select(vec2<bool>(true, true), !(!vec2<bool>(var_0.d.x, true)), !(!vec2<bool>(global2[_wgslsmith_index_u32(113475u, 17u)], global3.b.x))));
    var_0 = Struct_1(min(arg_1.yx, firstLeadingBit(var_1.a)), var_0.b, any(vec2<bool>(false, false)), vec2<bool>(!(!(global2[_wgslsmith_index_u32(1u, 17u)] & true)), true));
    var var_2 = vec2<u32>(~reverseBits(u_input.a.x), 58144u);
    var var_3 = ~var_0.a.x;
    return Struct_1(vec2<i32>(u_input.b.x, _wgslsmith_add_i32(-global1[_wgslsmith_index_u32(u_input.a.x, 14u)], -var_1.a.x)) >> (u_input.c.xx % vec2<u32>(32u)), vec4<bool>(func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 55723u, u_input.c.x, 31885u), vec4<u32>(u_input.a.x, 0u, 4294967295u, 577u) | vec4<u32>(var_2.x, 0u, var_2.x, 28300u), reverseBits(vec4<u32>(1u, u_input.c.x, 0u, var_2.x))), Struct_1(select(vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(-20546i, arg_1.x), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 17u)], var_0.c)), !vec4<bool>(global3.c, false, false, arg_0.x), 325f == arg_2.x, select(vec2<bool>(global2[_wgslsmith_index_u32(var_2.x, 17u)], var_1.c), vec2<bool>(false, var_1.b.x), var_0.b.zw))).x, var_1.c, !any(select(arg_0.yx, vec2<bool>(true, global3.b.x), global3.b.wz)), false), true, !var_1.b.xz);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 17>();
    let var_0 = func_4(select(!func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, 33080u, u_input.a.x), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.a.x)), global0[_wgslsmith_index_u32(func_1(Struct_1(u_input.b, global3.b, global3.b.x, global3.d), -606f, u_input.c.x, 230f), 23u)]), select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], select(true, global3.d.x, false)), vec3<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(58713u, 17u)], global3.c, global3.b.x)), u_input.d == global3.a.x, all(global3.b.yyw)), !vec3<bool>(global3.b.x, false, true)), func_3(~select(vec4<u32>(u_input.c.x, 2496u, u_input.c.x, 66857u), vec4<u32>(u_input.a.x, 63992u, u_input.c.x, u_input.a.x), global3.c), global0[_wgslsmith_index_u32(1u, 23u)]).x), vec3<i32>(abs(_wgslsmith_mod_i32(-2147483647i, global3.a.x) | _wgslsmith_mult_i32(8073i, global3.a.x)), global1[_wgslsmith_index_u32(28631u, 14u)], firstLeadingBit(u_input.d) & 37546i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-126f, -1390f) * vec2<f32>(-1122f, -940f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(872f, 710f) * _wgslsmith_div_vec2_f32(vec2<f32>(461f, 1071f), vec2<f32>(1000f, -556f))))));
    var var_1 = ~u_input.c.x;
    var_1 = firstTrailingBit(countOneBits(reverseBits(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x))));
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, vec4<i32>(var_2.a.x, ~(-1i), 1i, var_2.a.x), global3.a.x);
}

