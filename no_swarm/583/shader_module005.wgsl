struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: i32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(0i, true, 36320i, vec2<bool>(false, false)), 139f, Struct_1(vec3<u32>(82464u, 4294967295u, 4294967295u)), Struct_2(13317i, true, 1i, vec2<bool>(false, true)));

var<private> global1: array<Struct_1, 19>;

var<private> global2: array<u32, 8> = array<u32, 8>(84226u, 1u, 87113u, 31240u, 0u, 53931u, 42358u, 0u);

var<private> global3: vec2<bool>;

var<private> global4: Struct_3;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>) -> bool {
    var var_0 = ~u_input.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b));
    return true;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3) -> vec3<f32> {
    var var_0 = !global3.x;
    global4 = arg_1;
    global2 = array<u32, 8>();
    var var_1 = vec4<u32>(global0.c.a.x, reverseBits(64881u), ~(42902u & firstTrailingBit(1u)), global4.c.a.x) << (countOneBits(arg_0) % vec4<u32>(32u));
    var var_2 = ~(~_wgslsmith_clamp_vec4_i32(select(-vec4<i32>(0i, 2147483647i, -15877i, -21462i), _wgslsmith_sub_vec4_i32(vec4<i32>(70032i, 65160i, 0i, global4.d.c), vec4<i32>(global0.a.c, -2147483647i, u_input.a.x, u_input.a.x)), func_3(vec4<u32>(0u, arg_1.c.a.x, 56164u, arg_1.c.a.x), vec2<u32>(arg_1.c.a.x, 1u))), abs(vec4<i32>(global0.d.a, 19582i, global4.d.c, global0.a.c)), abs(vec4<i32>(-49895i, 21549i, arg_1.a.a, u_input.a.x)) << (_wgslsmith_mod_vec4_u32(arg_0, vec4<u32>(global0.c.a.x, arg_0.x, arg_1.c.a.x, 39129u)) % vec4<u32>(32u))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1238f, global0.b, -479f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.b, -1170f, 1035f) - vec3<f32>(arg_1.b, arg_1.b, 957f))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, 723f, arg_1.b) * vec3<f32>(1423f, global0.b, -442f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, -1267f, 2101f)), vec3<bool>(true, global4.a.d.x, false))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b, global4.b, 512f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(322f, global0.b, 1558f))))))));
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.b), -1854f, _wgslsmith_f_op_f32(floor(-1484f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec4<u32>(global0.c.a.x, 22509u, global0.c.a.x, 73574u), Struct_3(global4.d, 1000f, global0.c, Struct_2(u_input.a.x, global0.d.b, arg_0, global4.a.d)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1003f, 2305f, global4.b)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b, global4.b, 174f), vec3<f32>(global0.b, global4.b, 1465f), vec3<bool>(global3.x, false, true))) * vec3<f32>(global4.b, global0.b, -803f))))));
    var var_1 = global0.a.c;
    let var_2 = var_0.xz;
    var var_3 = global4.c.a.zz;
    var var_4 = global4.d;
    return Struct_2(var_4.a, all(vec3<bool>(false, global4.c.a.x >= global0.c.a.x, func_3(reverseBits(vec4<u32>(1u, global0.c.a.x, global4.c.a.x, global2[_wgslsmith_index_u32(4294967295u, 8u)])), vec2<u32>(4294967295u, 4294967295u)))), _wgslsmith_clamp_i32(-(~abs(46625i)), var_4.c, reverseBits(-34536i)), !global4.a.d);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = true;
    var var_1 = global4.d.d;
    global1 = array<Struct_1, 19>();
    let var_2 = func_1(-1i, (~(arg_1.a.x | arg_3.c.a.x) <= ~(arg_3.c.a.x >> (arg_3.c.a.x % 32u))) || arg_3.d.d.x);
    return Struct_2(arg_2.x, true, -(~1i), select(var_2.d, !vec2<bool>(var_1.x, false), !vec2<bool>(any(arg_0.zx), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~78169u;
    var var_1 = global0.d;
    var var_2 = global3.x;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-361f - _wgslsmith_f_op_f32(ceil(-764f))), -757f);
    global1 = array<Struct_1, 19>();
    global4 = Struct_3(func_4(select(!vec4<bool>(false, global4.d.d.x, global0.a.b, true), !(!vec4<bool>(global3.x, var_1.b, global4.a.d.x, global3.x)), true || any(vec2<bool>(false, true))), Struct_1(global4.c.a), u_input.a.yz, Struct_3(func_1(-var_1.c, true), -256f, Struct_1(vec3<u32>(83378u, 4294967295u, global0.c.a.x)), global4.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4.b, global0.b))), Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(firstTrailingBit(global0.c.a.x) >> (global4.c.a.x % 32u), 8u)], global2[_wgslsmith_index_u32(global0.c.a.x, 8u)], 0u)), func_4(select(!select(vec4<bool>(true, global4.d.b, global4.d.d.x, global4.d.d.x), vec4<bool>(false, global3.x, global0.a.b, global3.x), vec4<bool>(true, global0.d.d.x, var_1.d.x, var_1.b)), vec4<bool>(true, global3.x != false, all(vec3<bool>(false, false, global3.x)), false), select(!vec4<bool>(global3.x, global4.d.d.x, true, false), select(vec4<bool>(global4.d.b, global3.x, true, global0.a.b), vec4<bool>(global0.d.b, global4.d.b, true, var_1.d.x), true), vec4<bool>(global4.a.d.x, false, global3.x, true))), Struct_1(~countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(143054u, 8u)], 0u, 49243u))), ~abs(u_input.a.yz), Struct_3(global4.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(573f + 1395f), global4.b, 0i >= global0.d.a)), global0.c, func_4(select(vec4<bool>(global0.d.b, global4.d.b, false, false), vec4<bool>(true, global4.d.b, true, true), global3.x), Struct_1(global4.c.a), _wgslsmith_clamp_vec2_i32(u_input.a.zx, vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(33604i, -1i)), Struct_3(Struct_2(global4.a.c, true, u_input.a.x, global0.a.d), global0.b, Struct_1(global0.c.a), global0.d)))));
    var_2 = select(!var_1.b, !(!global0.d.b), func_3(~vec4<u32>(0u, reverseBits(global4.c.a.x), ~4294967295u, 0u & var_0), _wgslsmith_clamp_vec2_u32(global0.c.a.xx, firstLeadingBit(vec2<u32>(global0.c.a.x, 105989u)) | _wgslsmith_sub_vec2_u32(global0.c.a.zy, global4.c.a.xz), vec2<u32>(global4.c.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32000u, 8u)], 8u)]) | global0.c.a.yz)));
    global0 = Struct_3(func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(false, any(vec2<bool>(global3.x, global0.d.d.x)), !var_1.b, true), select(vec4<bool>(var_1.d.x, var_1.d.x, global3.x, global0.d.d.x), vec4<bool>(global0.d.d.x, false, var_1.b, true), !vec4<bool>(true, global3.x, global0.a.b, true))), Struct_1(vec3<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.a.x, var_0, global0.c.a.x, 4294967295u), vec4<u32>(var_0, global2[_wgslsmith_index_u32(global0.c.a.x, 8u)], 11422u, 53043u)), 1u)), vec2<i32>(i32(-1i) * -2147483647i, min(2147483647i, var_1.c)) << (global4.c.a.xy % vec2<u32>(32u)), Struct_3(Struct_2(var_1.a, all(vec3<bool>(global0.d.d.x, true, var_1.d.x)), u_input.a.x, !global0.d.d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1722f + var_3.x))), Struct_1(abs(vec3<u32>(global4.c.a.x, 0u, global2[_wgslsmith_index_u32(0u, 8u)]))), func_1(_wgslsmith_sub_i32(u_input.a.x, var_1.a), all(vec2<bool>(false, true))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-869f)), _wgslsmith_f_op_f32(round(-288f))), _wgslsmith_f_op_f32(abs(var_3.x)))))), global1[_wgslsmith_index_u32(~(~global4.c.a.x) >> (_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(1u, 8u)], global4.c.a.x, global4.c.a.x), global2[_wgslsmith_index_u32(var_0, 8u)]) % 32u), 19u)], func_4(vec4<bool>(all(select(vec3<bool>(global3.x, true, global0.d.d.x), vec3<bool>(false, global3.x, true), global4.d.b)), var_1.d.x, !(var_3.x >= var_3.x), !any(vec3<bool>(false, global3.x, global4.a.d.x))), global4.c, u_input.a.xx, Struct_3(global0.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global4.b)), _wgslsmith_f_op_f32(-225f - 1866f))), Struct_1(~global4.c.a), func_4(vec4<bool>(var_1.b, global3.x, global4.a.d.x, var_1.d.x), global4.c, u_input.a.zy, Struct_3(Struct_2(-5152i, false, global0.d.a, global0.d.d), -927f, Struct_1(global0.c.a), Struct_2(2147483647i, false, 1i, vec2<bool>(global4.d.d.x, global0.d.d.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1638f * _wgslsmith_f_op_f32(floor(var_3.x)))), select(vec4<i32>(-u_input.a.x, global0.d.c, -var_1.c, ~(42559i << (1u % 32u))), vec4<i32>(1i, -28478i, global4.d.c, countOneBits(u_input.a.x) << ((var_0 & 1u) % 32u)), !global3.x), vec2<f32>(-393f, -561f));
}

