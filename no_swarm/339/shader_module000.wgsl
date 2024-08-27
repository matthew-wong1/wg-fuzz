struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 22> = array<bool, 22>(false, true, true, true, false, false, false, false, false, true, false, false, true, false, false, false, true, true, true, true, true, true);

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> f32 {
    global2 = Struct_2(vec2<i32>(~global2.a.x, -1i), arg_2.c, global0.b.e, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.a, _wgslsmith_f_op_f32(round(global0.d.x)), arg_0) - _wgslsmith_f_op_vec3_f32(-arg_2.c.d.xxy)));
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1610f, 584f, _wgslsmith_f_op_f32(global2.d.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a) * global2.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.c.a)) - _wgslsmith_f_op_f32(597f * global0.d.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.a) + _wgslsmith_f_op_f32(floor(2059f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1185f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.d.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1128f, _wgslsmith_f_op_f32(-647f + arg_2.c.a), _wgslsmith_f_op_f32(floor(180f))) - vec3<f32>(1012f, 2304f, -403f)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-759f, -519f, 1738f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.yzy, arg_1.c.d.yxx) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.d)))) * vec3<f32>(global0.b.d.x, global2.d.x, _wgslsmith_f_op_f32(-arg_2.c.d.x))));
    var var_2 = arg_1.c;
    var var_3 = ~global2.b.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a * 517f) + -708f))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_3) -> u32 {
    var var_0 = global0.d.x;
    let var_1 = u_input.c;
    let var_2 = _wgslsmith_mod_i32(global0.a.x, reverseBits(max(~(-13116i), _wgslsmith_div_i32(u_input.a.x, ~(-1i)))));
    var var_3 = arg_2.wwx;
    global2 = Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(abs(16571i), _wgslsmith_sub_i32(2147483647i, arg_2.x)), -global0.a | vec2<i32>(arg_3.b.x, -1i)) << (select(vec2<u32>(~4294967295u, 4294967295u), u_input.d.wx, !select(global0.c.yz, arg_0.b.xz, true)) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(386f)))))), !arg_1.c.b, _wgslsmith_add_u32(arg_0.c ^ abs(43212u), 1u), vec4<f32>(_wgslsmith_f_op_f32(abs(545f)), _wgslsmith_f_op_f32(-global2.b.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a, arg_3.c.a, global1[_wgslsmith_index_u32(103331u, 22u)])) + -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.c.d.x * global0.b.a)))), !select(select(arg_3.c.b, vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 22u)], arg_1.c.b.x), vec3<bool>(true, false, global2.c.x)), vec3<bool>(arg_0.e.x, false, global1[_wgslsmith_index_u32(arg_0.c, 22u)]), global2.b.e)), vec3<bool>(!select(!arg_1.c.b.x, false, true), true, all(select(vec4<bool>(global2.b.e.x, true, global1[_wgslsmith_index_u32(arg_0.c, 22u)], global2.b.e.x), !vec4<bool>(false, false, arg_1.c.e.x, global1[_wgslsmith_index_u32(arg_3.c.c, 22u)]), select(vec4<bool>(false, true, false, true), vec4<bool>(false, global1[_wgslsmith_index_u32(14153u, 22u)], arg_1.c.e.x, arg_3.c.b.x), arg_3.c.e.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(arg_3.c.d.wxz, vec3<f32>(arg_0.d.x, -809f, arg_0.d.x))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(966f, -848f, -242f))))));
    return _wgslsmith_add_u32(~arg_0.c, 95065u);
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    global1 = array<bool, 22>();
    let var_0 = Struct_2(~abs(u_input.a.yz), Struct_1(-653f, select(vec3<bool>(true, true, global0.b.b.x), global2.b.e, vec3<bool>(global2.c.x, select(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], false, global0.c.x), all(global0.c.yz))), func_4(Struct_1(_wgslsmith_f_op_f32(func_3(-2180f, Struct_3(2147483647i, vec4<i32>(-6526i, 2147483647i, global0.a.x, 17451i), Struct_1(272f, global2.b.e, 4294967295u, vec4<f32>(global2.b.a, -298f, 200f, global2.b.a), vec3<bool>(global1[_wgslsmith_index_u32(global2.b.c, 22u)], global2.c.x, false))), Struct_3(u_input.a.x, vec4<i32>(u_input.a.x, -35353i, u_input.a.x, u_input.a.x), Struct_1(global0.d.x, global0.b.e, 0u, vec4<f32>(arg_0.x, 611f, global2.d.x, 831f), vec3<bool>(true, true, false))), 4294967295u)), !vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 22u)], false), ~global0.b.c, vec4<f32>(-336f, 385f, -1000f, -144f), global2.b.b), Struct_3(-68540i, vec4<i32>(-1i, -13424i, u_input.a.x, global2.a.x), Struct_1(-252f, global0.b.b, 18625u, vec4<f32>(1835f, global2.d.x, 1555f, global2.d.x), vec3<bool>(global1[_wgslsmith_index_u32(2007u, 22u)], global2.b.b.x, global0.b.e.x))), u_input.a ^ select(u_input.a, u_input.a, vec4<bool>(global1[_wgslsmith_index_u32(global0.b.c, 22u)], global2.b.e.x, false, global0.c.x)), Struct_3(i32(-1i) * -16602i, _wgslsmith_add_vec4_i32(vec4<i32>(global2.a.x, -588i, global0.a.x, global0.a.x), u_input.a), Struct_1(global2.b.d.x, vec3<bool>(true, true, true), global0.b.c, vec4<f32>(-282f, global0.b.a, 1760f, -1382f), global0.b.b))), vec4<f32>(936f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a) - _wgslsmith_f_op_f32(f32(-1f) * -838f)), global0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.x), -1486f)), select(!global0.b.e, select(select(vec3<bool>(false, global2.b.b.x, false), global0.c, vec3<bool>(true, global2.b.e.x, global2.c.x)), select(global2.b.b, global2.b.e, vec3<bool>(global2.b.e.x, global0.b.e.x, global2.b.b.x)), true), global1[_wgslsmith_index_u32(39363u << (global0.b.c % 32u), 22u)])), select(select(global2.c, global0.c, select(!global0.b.b, global0.c, vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], false))), !global2.b.b, false), global0.b.d.xyz);
    let var_1 = u_input.d.x;
    let var_2 = u_input.d.ww;
    let var_3 = 1u;
    return 4294967295u;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = -firstLeadingBit(global0.a.x);
    let var_1 = !all(global2.b.b) != all(arg_1.c.e);
    var var_2 = Struct_2(-min(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(global2.a.x, 1i)), global0.a), firstTrailingBit(~vec2<i32>(var_0, global2.a.x))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.c.d.x))), global0.d.x, !all(arg_1.c.e))), global2.c, u_input.d.x, _wgslsmith_f_op_vec4_f32(-global0.b.d), select(global2.c, vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, false)))), vec3<bool>(true || select(var_1, all(vec4<bool>(arg_1.c.b.x, true, false, global2.c.x)), arg_1.c.b.x), any(vec3<bool>(true, arg_1.c.e.x, true)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(608f, arg_1.c.d.x)), _wgslsmith_div_f32(global0.b.d.x, global2.b.d.x), _wgslsmith_f_op_f32(-arg_1.c.a)))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.b.a * _wgslsmith_f_op_f32(arg_1.c.d.x + arg_1.c.a)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.b.a, arg_1.c.d.x), _wgslsmith_f_op_f32(-arg_1.c.a)))))), arg_1.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1087f, arg_1.c.a), _wgslsmith_f_op_f32(-var_2.b.a), global1[_wgslsmith_index_u32(25250u, 22u)]))), var_2.d.x);
    let var_4 = arg_1;
    return arg_1.c;
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = func_5(vec2<u32>(~global2.b.c & ~12497u, ~func_2(_wgslsmith_div_vec4_f32(vec4<f32>(global0.d.x, -1181f, global2.b.d.x, 1596f), global0.b.d))), Struct_3(4860i, -u_input.a, Struct_1(global0.d.x, global0.b.e, ~reverseBits(global0.b.c), global2.b.d, select(!vec3<bool>(global2.b.b.x, true, false), !global0.b.b, !vec3<bool>(global2.c.x, false, global1[_wgslsmith_index_u32(global0.b.c, 22u)])))));
    global2 = Struct_2(reverseBits(-vec2<i32>(_wgslsmith_dot_vec2_i32(global2.a, global0.a), 61i)), func_5(~vec2<u32>(1u, u_input.b), Struct_3(abs(_wgslsmith_div_i32(1i, global2.a.x)), vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, 2147483647i) << (u_input.d % vec4<u32>(32u)), global0.b)), !select(var_0.b, var_0.b, select(vec3<bool>(global1[_wgslsmith_index_u32(98181u, 22u)], true, global0.c.x), global2.b.b, !global0.c)), _wgslsmith_f_op_vec3_f32(-var_0.d.yyw));
    global0 = Struct_2(~u_input.a.zx, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -1607f) + _wgslsmith_f_op_f32(step(120f, -840f))), !var_0.b, countOneBits(_wgslsmith_mult_u32(1u, u_input.d.x)), vec4<f32>(arg_0.x, 1085f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -601f), -1102f, !global2.c.x)), func_5(abs(u_input.d.zw), Struct_3(1i, vec4<i32>(global2.a.x, global2.a.x, 0i, global2.a.x), Struct_1(-1811f, vec3<bool>(global2.b.b.x, var_0.b.x, var_0.b.x), 14599u, global2.b.d, vec3<bool>(global2.b.e.x, global0.c.x, true)))).d.x), vec3<bool>(!global2.c.x == (arg_0.x < global0.d.x), true, func_5(vec2<u32>(u_input.c, u_input.b), Struct_3(global0.a.x, vec4<i32>(global0.a.x, global2.a.x, -2147483647i, u_input.a.x), global0.b)).b.x)), select(vec3<bool>(false, _wgslsmith_f_op_f32(global0.b.d.x + 448f) == _wgslsmith_f_op_f32(var_0.a * 410f), global1[_wgslsmith_index_u32(global0.b.c, 22u)]), var_0.b, func_5(select(~vec2<u32>(26037u, 59066u), u_input.d.wy, !global0.b.e.yx), Struct_3(50051i, vec4<i32>(global0.a.x, 2147483647i, 20850i, global0.a.x), func_5(u_input.d.zx, Struct_3(1299i, vec4<i32>(u_input.a.x, u_input.a.x, global0.a.x, -2147483647i), Struct_1(-204f, global0.c, global2.b.c, global2.b.d, vec3<bool>(true, false, true)))))).b.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global0.b.d.xyz)), global2.d));
    global0 = Struct_2(~vec2<i32>(30743i, u_input.a.x), global2.b, select(!vec3<bool>(global0.b.e.x, global2.a.x > global0.a.x, true), global0.b.e, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global0.b.d.zxw)))));
    global1 = array<bool, 22>();
    return Struct_3(60916i, countOneBits(max(vec4<i32>(u_input.a.x, u_input.a.x, -34934i, u_input.a.x) << (u_input.d % vec4<u32>(32u)), u_input.a) >> (~select(vec4<u32>(1u, 11644u, 170u, 33638u), u_input.d, true) % vec4<u32>(32u))), global2.b);
}

fn func_6(arg_0: Struct_3, arg_1: vec4<bool>) -> u32 {
    var var_0 = u_input.d.zz;
    var var_1 = func_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(894f, -831f) * global0.b.d.wy))));
    var var_2 = Struct_2(~(-arg_0.b.xz), arg_0.c, !vec3<bool>(true, var_1.c.e.x, false), _wgslsmith_f_op_vec3_f32(ceil(arg_0.c.d.yzz)));
    let var_3 = vec4<i32>(-_wgslsmith_mod_i32(abs(arg_0.b.x), -2147483647i) & ~(-1i & firstTrailingBit(66845i)), global0.a.x, _wgslsmith_div_i32(41264i, 1i), var_1.b.x & ~(-56137i));
    var var_4 = Struct_2(abs(firstTrailingBit(~var_1.b.wx)), global0.b, select(!select(vec3<bool>(true, true, true), global2.c, select(global2.c.x, arg_1.x, false)), !func_1(_wgslsmith_div_vec2_f32(vec2<f32>(global0.b.d.x, global2.b.d.x), arg_0.c.d.zy)).c.b, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(326f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_0.c.d.x, global0.d.x)))), var_1.c.d.x)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.d, _wgslsmith_div_u32(global0.b.c, ~func_6(func_1(global2.d.xx), vec4<bool>(global2.b.b.x, false, global0.b.e.x, global2.b.b.x))), abs(vec2<u32>(_wgslsmith_mod_u32(abs(4294967295u), _wgslsmith_dot_vec3_u32(u_input.d.xyz, vec3<u32>(4294967295u, 1u, global0.b.c))), 7725u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.d.x, -1000f)) + -1000f))), _wgslsmith_f_op_f32(sign(-120f)));
}

