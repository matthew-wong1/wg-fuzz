struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<bool>(true, false, true), -1i, vec3<f32>(-741f, 319f, -1175f), 27644i), Struct_1(vec3<bool>(true, true, true), 2147483647i, vec3<f32>(-898f, 277f, -123f), 14403i));

var<private> global2: vec4<bool>;

var<private> global3: array<vec2<bool>, 17>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = arg_0;
    var_0 = Struct_1(!vec3<bool>(false && (global0[_wgslsmith_index_u32(23734u, 26u)] && global0[_wgslsmith_index_u32(u_input.c, 26u)]), true, false), 42834i, _wgslsmith_f_op_vec3_f32(-arg_0.c), -(~u_input.d));
    var var_1 = Struct_2(Struct_1(select(!var_0.a, arg_0.a, !arg_0.a), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.d, arg_0.d, u_input.d, arg_0.b), ~vec4<i32>(arg_0.b, 9520i, 1i, 10083i)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.d, u_input.d, u_input.a, var_0.d), vec4<i32>(-3474i, -3896i, 0i, -19587i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c.x, arg_0.c.x, 900f), arg_0.c))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(849f, arg_0.c.x, arg_0.c.x)))), -u_input.d), _wgslsmith_div_vec2_i32(~(~vec2<i32>(u_input.d, u_input.a)), -firstTrailingBit(vec2<i32>(u_input.d, 2147483647i))) ^ _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-10308i, u_input.d), vec2<i32>(arg_0.d, var_0.b)), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.d, -70945i), vec2<i32>(1i, var_0.d))), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, arg_0.d), vec2<i32>(arg_0.d, 19117i)))));
    return _wgslsmith_mult_vec2_i32(var_1.b, var_1.b);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = Struct_1(select(vec3<bool>(true, true, true), !global2.yyw, !(!vec3<bool>(arg_1.x, arg_0.x, true))), ~_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(1i, arg_2.b, -21065i)), _wgslsmith_div_vec3_i32(-vec3<i32>(0i, 57925i, u_input.a), vec3<i32>(1i, u_input.a, arg_2.b))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-288f, arg_2.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f), _wgslsmith_f_op_f32(arg_2.c.x * -3501f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1711f, arg_2.c.x, 681f))), vec3<f32>(arg_2.c.x, -504f, arg_2.c.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(arg_2.c, arg_2.c)), arg_2.c)))))), 1i);
    var var_1 = !select(global2.wy, !arg_2.a.zx, arg_1.x);
    global2 = vec4<bool>(var_0.a.x, any(vec4<bool>(true, true, any(global2.zxx), var_0.a.x)), select(all(!select(vec4<bool>(arg_1.x, true, global2.x, var_0.a.x), vec4<bool>(arg_2.a.x, false, false, arg_2.a.x), var_0.a.x)), !any(!vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(1u, 26u)], true, true)), true), arg_1.x);
    var_0 = Struct_1(var_0.a, 0i, vec3<f32>(-409f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-939f)) * arg_2.c.x), _wgslsmith_f_op_f32(-var_0.c.x)), max(arg_2.b, 164i));
    let var_2 = vec2<bool>(true, true);
    return _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(-abs(select(vec2<i32>(1i, u_input.d), vec2<i32>(arg_2.d, u_input.d), true)), abs(firstLeadingBit(~vec2<i32>(u_input.d, var_0.d)))), -(vec2<i32>(countOneBits(-54539i), -arg_2.b) ^ ((vec2<i32>(var_0.d, 26192i) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))) ^ vec2<i32>(-34169i, arg_2.b))), vec2<i32>(u_input.d, func_2(arg_2).x));
}

fn func_1() -> vec2<i32> {
    let var_0 = 1442f;
    global3 = array<vec2<bool>, 17>();
    global1 = array<Struct_1, 2>();
    global2 = vec4<bool>(global2.x, true, true, false);
    let var_1 = u_input.b.x;
    return ~(min(~vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, u_input.d) | vec2<i32>(u_input.a, -2147483647i)) & _wgslsmith_add_vec2_i32(~vec2<i32>(-4332i, -2147483647i), func_2(global1[_wgslsmith_index_u32(4294967295u, 2u)]))) ^ func_3(vec2<bool>(any(vec3<bool>(false, global2.x, global0[_wgslsmith_index_u32(27479u, 26u)])), true), global2.zy, global1[_wgslsmith_index_u32(0u, 2u)]);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    global1 = array<Struct_1, 2>();
    var var_0 = Struct_1(vec3<bool>(!(_wgslsmith_f_op_f32(-arg_1.c.x) > _wgslsmith_f_op_f32(-343f * arg_3.a.c.x)), select(any(vec4<bool>(true, false, arg_1.a.x, arg_3.a.a.x)) && all(arg_1.a), !global2.x == true, any(vec2<bool>(false, true))), true), arg_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, 1000f, arg_3.a.c.x)) + _wgslsmith_f_op_vec3_f32(-arg_3.a.c)), arg_1.c))), arg_0.x >> (_wgslsmith_sub_u32(4294967295u, ~_wgslsmith_div_u32(58779u, u_input.c)) % 32u));
    let var_1 = arg_1;
    let var_2 = !(!select(any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], arg_1.a.x, var_1.a.x, false)), any(vec2<bool>(false, true)), false) & arg_1.a.x);
    global3 = array<vec2<bool>, 17>();
    return Struct_2(Struct_1(vec3<bool>(!(!var_2), global2.x, !var_1.a.x), ~min(-6992i, _wgslsmith_mod_i32(var_1.d, var_1.b)), vec3<f32>(_wgslsmith_f_op_f32(1614f * _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(1000f + arg_3.a.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.c.x, arg_1.c.x), _wgslsmith_div_f32(arg_1.c.x, arg_3.a.c.x)))), 0i), ~(~_wgslsmith_div_vec2_i32(countOneBits(arg_0), abs(vec2<i32>(6489i, var_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-339f - _wgslsmith_f_op_f32(-106f - 551f)), 952f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1161f, 1688f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1240f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -653f) + _wgslsmith_div_f32(3135f, -1000f)))));
    let var_1 = func_4(select(-vec2<i32>(countOneBits(1i), ~(-2147483647i)), max(~abs(vec2<i32>(-18733i, u_input.d)), _wgslsmith_mod_vec2_i32(func_1(), func_2(global1[_wgslsmith_index_u32(37676u, 2u)]))), select(!(!global3[_wgslsmith_index_u32(u_input.b.x, 17u)]), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(5774u, 0u), 17u)], !select(global3[_wgslsmith_index_u32(37019u, 17u)], global2.wy, global2.x))), global1[_wgslsmith_index_u32(u_input.c, 2u)], 71377i, Struct_2(Struct_1(select(select(global2.yyx, global2.zzy, vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 26u)], false)), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 26u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), !global0[_wgslsmith_index_u32(16305u, 26u)]), ~(~14263i), var_0, _wgslsmith_div_i32(-u_input.a, i32(-1i) * -2147483647i)), _wgslsmith_mult_vec2_i32(-(vec2<i32>(-2147483647i, u_input.d) >> (u_input.b.zz % vec2<u32>(32u))), -vec2<i32>(1i, u_input.d) | _wgslsmith_sub_vec2_i32(vec2<i32>(-32444i, 18705i), vec2<i32>(0i, u_input.d)))));
    let var_2 = !global2.yw;
    let var_3 = all(vec4<bool>(var_1.a.a.x, !global2.x, _wgslsmith_mult_u32(50368u, u_input.c) > 3983u, true)) | (global0[_wgslsmith_index_u32(u_input.b.x, 26u)] && all(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, true, true, var_2.x), !vec4<bool>(global2.x, true, true, global0[_wgslsmith_index_u32(1u, 26u)]))));
    global2 = !vec4<bool>(true, func_4(-var_1.b, global1[_wgslsmith_index_u32(u_input.c, 2u)], _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-10805i, -2147483647i, 16682i)), reverseBits(vec3<i32>(var_1.a.d, var_1.b.x, -1i))), Struct_2(Struct_1(var_1.a.a, -26350i, var_1.a.c, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(24967i, var_1.b.x), var_1.b))).a.a.x, any(vec2<bool>(var_1.a.a.x, false || global2.x)), true);
    global3 = array<vec2<bool>, 17>();
    global3 = array<vec2<bool>, 17>();
    let var_4 = select(all(var_1.a.a), all(vec4<bool>(false, all(select(global2.xw, global3[_wgslsmith_index_u32(11906u, 17u)], var_2.x)), true, false)), func_2(Struct_1(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c, 26u)]), countOneBits(u_input.d), _wgslsmith_f_op_vec3_f32(min(var_1.a.c, vec3<f32>(-1057f, var_1.a.c.x, var_1.a.c.x))), func_4(var_1.b, global1[_wgslsmith_index_u32(47706u, 2u)], 2147483647i, Struct_2(Struct_1(vec3<bool>(var_1.a.a.x, false, var_2.x), -30011i, var_1.a.c, u_input.a), var_1.b)).a.b)).x <= ~_wgslsmith_div_i32(var_1.a.d, -19043i ^ var_1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1221f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-495f - 1278f))))) + var_0.x));
}

