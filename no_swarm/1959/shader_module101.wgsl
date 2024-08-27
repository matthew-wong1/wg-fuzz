struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3;

var<private> global2: Struct_3;

var<private> global3: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(false, vec3<u32>(1u, 104220u, 1u), i32(-2147483648)), Struct_3(true, vec3<u32>(21501u, 66335u, 0u), 2147483647i), Struct_3(false, vec3<u32>(1u, 47310u, 0u), -1i), Struct_3(false, vec3<u32>(1u, 4294967295u, 14738u), i32(-2147483648)), Struct_3(true, vec3<u32>(1u, 1u, 81880u), -53453i), Struct_3(true, vec3<u32>(1u, 4294967295u, 76013u), 2147483647i), Struct_3(false, vec3<u32>(65782u, 0u, 7769u), 2147483647i), Struct_3(true, vec3<u32>(80886u, 105453u, 74791u), 1i), Struct_3(true, vec3<u32>(1u, 35971u, 4294967295u), 0i), Struct_3(false, vec3<u32>(4294967295u, 1u, 0u), 37999i), Struct_3(false, vec3<u32>(0u, 0u, 13640u), -187i), Struct_3(true, vec3<u32>(0u, 45538u, 1u), 5542i), Struct_3(false, vec3<u32>(1u, 5240u, 56281u), -12038i), Struct_3(true, vec3<u32>(73869u, 1u, 52091u), 11187i), Struct_3(true, vec3<u32>(1u, 9266u, 18325u), 2147483647i), Struct_3(true, vec3<u32>(0u, 4294967295u, 80791u), 4621i));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global2 = Struct_3(global0.a, _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(global0.b, global2.b), vec3<u32>(_wgslsmith_add_u32(0u, ~76992u), global1.b.x, arg_0.x)), -1i);
    var var_0 = _wgslsmith_dot_vec2_u32(global0.b.zz, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(firstLeadingBit(69258u), global0.b.x), ~u_input.b.x), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u) | vec2<u32>(global2.b.x, global0.b.x), abs(vec2<u32>(arg_0.x, 5272u))) & ~arg_0.zy));
    let var_1 = ~vec2<i32>(firstLeadingBit(firstLeadingBit(u_input.c.x)), ~abs(~u_input.c.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -280f), _wgslsmith_f_op_f32(f32(-1f) * -165f), -1165f, -1856f)))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(39194u, global1.b.x, global1.b.x, u_input.b.x)) | ~vec4<u32>(global1.b.x, arg_0.x, 55704u, u_input.b.x), u_input.b), vec4<u32>(select(global2.b.x, 9333u, any(vec3<bool>(true, true, false))), ~1u, global1.b.x, firstTrailingBit(u_input.b.x) >> ((1u << (u_input.b.x % 32u)) % 32u))));
    let var_3 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a.x)));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: bool) -> u32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(720f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) + arg_0))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -920f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1042f, _wgslsmith_f_op_f32(f32(-1f) * -626f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, -1305f), vec2<f32>(-757f, arg_0), global1.a)))), !all(arg_1))));
    var var_2 = vec3<bool>(true, all(arg_1.zzw), true);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-arg_0), -980f, -547f) * vec4<f32>(_wgslsmith_f_op_f32(-692f + -509f), _wgslsmith_f_op_f32(step(-1034f, -757f)), _wgslsmith_f_op_f32(exp2(var_1.x)), var_1.x)))));
    global1 = global3[_wgslsmith_index_u32(~(~(~global2.b.x)) & countOneBits(~firstLeadingBit(31956u << (0u % 32u))), 16u)];
    return ~1u;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = vec3<u32>(0u, firstTrailingBit(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1891f * 1000f)), select(vec4<bool>(global0.a, true, false, global2.a), !vec4<bool>(true, global2.a, global0.a, global0.a), !vec4<bool>(global1.a, false, global2.a, global0.a)), _wgslsmith_f_op_f32(func_3(global1.b)) == 594f)), global1.b.x);
    var var_1 = global0.b.x;
    let var_2 = firstLeadingBit(~vec3<u32>(global0.b.x, select(~47200u, _wgslsmith_dot_vec2_u32(u_input.b.zw, u_input.b.yy), any(vec3<bool>(global0.a, true, false))), 0u));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(827f, 664f, -605f, -3153f))))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(994f, -480f, -935f, -249f), vec4<f32>(460f, -956f, -109f, -491f), vec4<bool>(false, false, false, true))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-818f, 1000f, 1872f, -1610f), vec4<f32>(-1017f, -1332f, 115f, 355f), global1.a)))), vec4<f32>(_wgslsmith_f_op_f32(861f + -804f), -1000f, _wgslsmith_f_op_f32(func_3(vec3<u32>(global2.b.x, 7508u, 0u))), _wgslsmith_f_op_f32(f32(-1f) * -529f)), all(select(vec3<bool>(global1.a, global2.a, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))))), ~min(~vec4<u32>(0u, var_0.x, global1.b.x, global0.b.x), vec4<u32>(0u, 7018u, 57592u, global2.b.x)) >> (~(~vec4<u32>(global1.b.x, var_0.x, 14972u, var_2.x) >> (abs(vec4<u32>(global1.b.x, global0.b.x, 4294967295u, var_2.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_4 = global3[_wgslsmith_index_u32(global0.b.x, 16u)];
    return var_3;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1190f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1112f)) + _wgslsmith_f_op_f32(f32(-1f) * -615f))))), 129f));
    var var_1 = _wgslsmith_mod_u32(12228u, firstTrailingBit(countOneBits(_wgslsmith_div_u32(20490u, global1.b.x))));
    var_0 = _wgslsmith_f_op_f32(floor(-975f));
    var var_2 = Struct_2(func_2(~vec3<i32>(global0.c, reverseBits(u_input.c.x), max(global0.c, u_input.c.x))), -select(firstLeadingBit(vec2<i32>(global1.c, -3747i)), u_input.c, true), _wgslsmith_f_op_f32(round(179f)), func_2(vec3<i32>(2147483647i, -34120i, ~countOneBits(-2147483647i))).b.wzw, _wgslsmith_f_op_f32(f32(-1f) * -1318f));
    var var_3 = ~global2.b.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-247f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.a.a.x + 1911f)))) - _wgslsmith_f_op_f32(-121f * -108f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -min(vec4<i32>(firstLeadingBit(global1.c), ~u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.a, global0.c)), 1i), ~(~(-vec4<i32>(global0.c, -2147483647i, global0.c, global0.c))));
    var var_1 = _wgslsmith_f_op_f32(func_1());
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(global0.b.x, global0.b.x), global1.b.x), global0.b.x);
    var_1 = _wgslsmith_div_f32(999f, 1f);
    var var_3 = _wgslsmith_f_op_f32(select(849f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(783f))))), all(vec2<bool>(all(vec2<bool>(global2.a, true)), any(!vec3<bool>(global1.a, true, global0.a))))));
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))));
    let x = u_input.a;
    s_output = StorageBuffer(select((~u_input.b.wy ^ abs(vec2<u32>(4294967295u, global0.b.x))) >> (u_input.b.yw % vec2<u32>(32u)), select(func_2(var_0.wyy).b.yz, vec2<u32>(global0.b.x, global0.b.x), vec2<bool>(global2.a, global0.a)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(global0.b, global2.b), global0.b.x) % vec2<u32>(32u)), all(!(!vec4<bool>(global0.a, global1.a, global2.a, global0.a)))), vec2<u32>(u_input.b.x | _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global1.b.zx, vec2<u32>(4294967295u, 62063u)), _wgslsmith_clamp_vec2_u32(global0.b.xz, vec2<u32>(global2.b.x, 1u), u_input.b.ww)), ~abs(global1.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -min(vec4<i32>(global0.c, global0.c, -20210i, -56953i), vec4<i32>(var_0.x, global0.c, var_0.x, global1.c)), -vec4<i32>(global2.c, -54682i, u_input.c.x, -2147483647i) | ~vec4<i32>(-34059i, 3146i, global0.c, -69707i)));
}

