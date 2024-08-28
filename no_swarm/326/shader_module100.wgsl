struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_4, 1>;

var<private> global2: array<bool, 4>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_2) -> f32 {
    global1 = array<Struct_4, 1>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(arg_2.d + arg_1.b.x), -580f, _wgslsmith_f_op_f32(round(-527f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.a, global0.d, arg_2.d)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.a, -570f, 1738f), _wgslsmith_f_op_vec3_f32(max(arg_1.b, vec3<f32>(arg_2.a.x, -342f, arg_2.c.a)))))));
    var var_1 = select(vec4<bool>(min(arg_1.a.b.x, firstLeadingBit(34011i)) >= firstTrailingBit(-2147483647i), !arg_1.c, arg_1.c, any(vec2<bool>(59165u < arg_0.x, true))), !(!select(select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(42256u, 4u)], arg_1.c, arg_1.c), vec4<bool>(true, arg_1.c, true, arg_1.c), vec4<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 4u)], true)), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], true, arg_1.c, arg_1.c), !vec4<bool>(arg_1.c, global2[_wgslsmith_index_u32(arg_1.a.c, 4u)], arg_1.c, false))), select(!vec4<bool>(false | arg_1.c, true, arg_1.c, !global2[_wgslsmith_index_u32(u_input.b.x, 4u)]), !vec4<bool>(!arg_1.c, true, arg_1.c, arg_1.c), any(vec3<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(arg_1.a.c, 4u)], arg_1.c)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2.b.x, arg_2.b.x), 4u)], !arg_1.c))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.a - _wgslsmith_f_op_f32(-global0.d))), ~u_input.a.xyx, arg_1.a.c);
    var var_3 = vec2<f32>(_wgslsmith_div_f32(-1171f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-977f, arg_1.a.a, global2[_wgslsmith_index_u32(0u, 4u)])) * _wgslsmith_f_op_f32(f32(-1f) * -562f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1275f, var_2.a, false)), _wgslsmith_f_op_f32(select(arg_2.c.a, -476f, var_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.c.a, _wgslsmith_div_f32(var_0.x, global0.d)), _wgslsmith_f_op_f32(min(-538f, _wgslsmith_f_op_f32(min(global0.c.a, 1050f))))) - global0.c.a));
    return 271f;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(global0.a, global0.a))) * vec3<f32>(670f, 252f, _wgslsmith_f_op_f32(round(arg_0.b)))), abs(global0.b), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(floor(-983f))))), arg_1.wzz, ~u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-250f))))), global0.c);
    var var_0 = any(vec3<bool>(-firstLeadingBit(0i) < u_input.a.x, (1u << (_wgslsmith_div_u32(u_input.b.x, 2275u) % 32u)) >= ~20470u, true));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(abs(arg_0.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.e.a), _wgslsmith_f_op_f32(round(-569f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-301f, _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(func_3(vec2<u32>(global0.e.c, global0.b.x), global1[_wgslsmith_index_u32(global0.b.x, 1u)], Struct_2(vec3<f32>(-904f, 242f, arg_0.b), global0.b, Struct_1(-1107f, global0.c.b, 0u), -480f, global0.e)))))), _wgslsmith_add_vec4_u32(~global0.b, global0.b), global0.c, arg_0.b, global0.c);
    global2 = array<bool, 4>();
    var var_2 = any(select(!select(arg_0.a.xy, !arg_0.a.xz, all(arg_0.a.zx)), select(!arg_0.a.xz, !arg_0.a.yy, arg_0.a.zy), true));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, var_1.a.x, arg_0.b)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a, global0.a)))), select(min(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, var_1.e.c) & global0.b, global0.b), countOneBits(~vec4<u32>(var_1.e.c, 91802u, 4294967295u, var_1.c.c))), var_1.b | _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(global0.b, var_1.b), vec4<u32>(global0.c.c, 1u, 0u, var_1.e.c) >> (vec4<u32>(0u, 4294967295u, 49712u, 1u) % vec4<u32>(32u))), global2[_wgslsmith_index_u32(var_1.c.c, 4u)]), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1565f + _wgslsmith_f_op_f32(round(1702f)))), u_input.a.wwy, select(~global0.e.c, 1u, true)), _wgslsmith_div_f32(global0.e.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.b)) - _wgslsmith_f_op_f32(global0.d * global0.c.a)) * arg_0.b)), Struct_1(-1480f, ~vec3<i32>(var_1.c.b.x, firstLeadingBit(var_1.e.b.x), 1i), ~u_input.b.x));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = func_2(Struct_3(!select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(12845u, 4u)], global2[_wgslsmith_index_u32(arg_0, 4u)]), vec3<bool>(global2[_wgslsmith_index_u32(45844u, 4u)], global2[_wgslsmith_index_u32(global0.c.c, 4u)], true), vec3<bool>(global2[_wgslsmith_index_u32(39059u, 4u)], false, true)), select(vec3<bool>(global2[_wgslsmith_index_u32(8085u, 4u)], false, false), vec3<bool>(global2[_wgslsmith_index_u32(13536u, 4u)], global2[_wgslsmith_index_u32(0u, 4u)], false), vec3<bool>(global2[_wgslsmith_index_u32(global0.c.c, 4u)], global2[_wgslsmith_index_u32(1u, 4u)], true)), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global0.e.a, global0.d)))) + global0.a.x)), (vec4<i32>(_wgslsmith_sub_i32(-47675i, global0.e.b.x), 0i >> (u_input.b.x % 32u), i32(-1i) * -52165i, u_input.a.x) ^ u_input.a) | vec4<i32>(-(~global0.c.b.x), u_input.d, -23493i, _wgslsmith_add_i32(global0.c.b.x << (4294967295u % 32u), ~31554i)));
    var var_1 = Struct_3(vec3<bool>(false, !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global0.b.zzw, _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(4294967295u, arg_0, u_input.b.x))), 4u)], _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, -10289i), abs(global0.e.b.zx)) != ~firstLeadingBit(global0.e.b.x)), 1344f);
    let var_2 = global0.e.b.yz;
    global1 = array<Struct_4, 1>();
    let var_3 = vec2<bool>(!any(!(!vec4<bool>(true, false, global2[_wgslsmith_index_u32(global0.b.x, 4u)], true))), false);
    return Struct_3(var_1.a, -415f);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> i32 {
    let var_0 = vec4<bool>(arg_1.a.x, !(false == arg_0.a.x) || false, !all(arg_0.a), func_1(abs(1u)).a.x);
    var var_1 = !(!(arg_1.b <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.c.a * -506f)))));
    var var_2 = vec2<i32>(u_input.c.x, ~u_input.a.x);
    var var_3 = _wgslsmith_dot_vec2_u32(~countOneBits(u_input.b.xy), ~((abs(vec2<u32>(42371u, global0.c.c)) & ~u_input.b.yy) ^ vec2<u32>(func_2(arg_0, vec4<i32>(-9593i, 1i, 2147483647i, u_input.d)).b.x, global0.b.x)));
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(global0.a)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.a * vec3<f32>(382f, -791f, global0.e.a)), _wgslsmith_f_op_vec3_f32(sign(global0.a)), false)))), _wgslsmith_f_op_vec3_f32(global0.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)))), arg_0.a.x));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 4>();
    var var_0 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, func_4(Struct_3(vec3<bool>(global2[_wgslsmith_index_u32(global0.e.c, 4u)], global2[_wgslsmith_index_u32(global0.b.x, 4u)], true), 1000f), func_1(u_input.b.x)), u_input.d), global0.c.b);
    global0 = func_2(func_1(_wgslsmith_sub_u32(26994u, global0.c.c << (26886u % 32u))), vec4<i32>(~select(global0.e.b.x, -2822i, all(vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b.x, 4u)]))), _wgslsmith_dot_vec4_i32(u_input.a, select(u_input.a, vec4<i32>(23883i, -2147483647i, u_input.d, 16439i), global2[_wgslsmith_index_u32(global0.c.c, 4u)]) >> (~vec4<u32>(4294967295u, 0u, global0.b.x, 1u) % vec4<u32>(32u))), ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 0i), u_input.c)), 1i));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_2(Struct_3(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x | global0.e.c, 4u)], all(vec3<bool>(global2[_wgslsmith_index_u32(34354u, 4u)], true, true))), _wgslsmith_f_op_f32(-global0.c.a)), vec4<i32>((40866i << (u_input.b.x % 32u)) >> ((115279u & global0.b.x) % 32u), 0i, 0i, countOneBits(func_2(Struct_3(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 4u)], true), global0.c.a), vec4<i32>(global0.c.b.x, var_0.x, var_0.x, -2147483647i)).c.b.x))).a.zx - _wgslsmith_f_op_vec2_f32(global0.a.xx + func_2(Struct_3(select(vec3<bool>(global2[_wgslsmith_index_u32(global0.c.c, 4u)], global2[_wgslsmith_index_u32(22247u, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)]), vec3<bool>(global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(0u, 4u)], true), false), _wgslsmith_f_op_f32(-global0.e.a)), vec4<i32>(reverseBits(u_input.d), select(var_0.x, 8853i, false), select(-29218i, -19393i, global2[_wgslsmith_index_u32(4294967295u, 4u)]), global0.c.b.x >> (2736u % 32u))).a.zz));
    let var_2 = !(-1i < _wgslsmith_div_i32(~(-1i), _wgslsmith_add_i32(u_input.c.x, -2147483647i))) & true;
    var_1 = func_2(Struct_3(vec3<bool>(select(false, var_2, false), false, func_1(u_input.b.x).a.x | (var_2 != false)), _wgslsmith_f_op_f32(abs(-138f))), u_input.a).a.zz;
    let var_3 = global0.d;
    var var_4 = -firstLeadingBit(select(~u_input.a, u_input.a, !(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], global2[_wgslsmith_index_u32(1u, 4u)], true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.d, var_1.x)))))), -1325f);
}

