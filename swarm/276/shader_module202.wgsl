struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: Struct_1;

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = Struct_1(!global2.x, global1.b, false);
    global1 = var_0;
    var var_1 = !(!vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 32932u), vec2<u32>(u_input.a, 1u)) != _wgslsmith_add_u32(u_input.a, 42341u), false, true));
    let var_2 = var_0;
    let var_3 = var_0;
    return true;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_0 + arg_0);
    var var_1 = global1.b.x;
    let var_2 = u_input.a;
    global3 = Struct_1(global1.c, firstLeadingBit(vec4<i32>(global3.b.x, global3.b.x, -min(2147483647i, -1i), min(-global1.b.x, abs(-16182i)))), false);
    let var_3 = vec3<i32>(_wgslsmith_clamp_i32(global3.b.x, -1i, min(global3.b.x, firstLeadingBit(0i))), _wgslsmith_div_i32(min(0i, _wgslsmith_dot_vec2_i32(countOneBits(global1.b.ww), ~vec2<i32>(20162i, global3.b.x))), abs(-global3.b.x)), global3.b.x);
    return Struct_1(all(select(vec3<bool>(func_3(), global1.a | false, true), !vec3<bool>(global2.x, global1.c, false), vec3<bool>(any(vec4<bool>(global3.c, global1.a, global2.x, global3.a)), global3.c, true))), _wgslsmith_clamp_vec4_i32(reverseBits(global1.b), global3.b << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_2, u_input.a, var_2, 4294967295u), vec4<u32>(12951u, 41760u, u_input.a, 1u)) % vec4<u32>(32u)), global3.b << (vec4<u32>(u_input.a, var_2, 51897u, 1u) % vec4<u32>(32u))) ^ (global3.b ^ ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.x, global3.b.x, -1i, -1i), vec4<i32>(-22765i, global3.b.x, global1.b.x, 2147483647i), global1.b)), true);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = arg_1;
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, arg_0, 576f))))))));
    let var_2 = 1i;
    let var_3 = true;
    let var_4 = select(select(vec3<bool>(!(!global1.c), func_3(), !var_3), select(vec3<bool>(false & var_3, true, var_1.b.x >= global3.b.x), select(vec3<bool>(global3.a, global1.a, false), select(vec3<bool>(true, var_0.c, var_1.a), vec3<bool>(true, false, global1.c), vec3<bool>(arg_1.a, false, arg_1.c)), false), select(select(vec3<bool>(true, global1.a, false), vec3<bool>(true, true, var_3), vec3<bool>(global2.x, true, false)), select(vec3<bool>(global1.c, var_0.c, var_3), vec3<bool>(false, arg_1.c, false), vec3<bool>(var_3, false, var_3)), vec3<bool>(global1.a, var_3, true))), !vec3<bool>(arg_1.b.x != 1i, false, true)), !vec3<bool>(-1175f > arg_0, func_3(), true), select(firstTrailingBit(2872u) == u_input.a, _wgslsmith_div_f32(-446f, 1f) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))), ((-710f != arg_0) && var_0.a) || !global1.c));
    return !vec4<bool>(var_4.x, 0i != _wgslsmith_clamp_i32(-var_0.b.x, 2147483647i, ~arg_1.b.x), all(var_4.xx), u_input.a != u_input.a);
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(798f, -1312f), vec2<f32>(1154f, 629f), vec2<bool>(global3.a, global1.a))))))))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_mult_u32(828u, 0u), 5339u, ~u_input.a) & ~(~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(15160u, 1u, u_input.a, 4294967295u) & ~vec4<u32>(u_input.a, 1980u, u_input.a, u_input.a), abs(vec4<u32>(u_input.a, u_input.a, 5622u, u_input.a)) | abs(vec4<u32>(22737u, 4823u, u_input.a, u_input.a)))), countOneBits(reverseBits(vec4<u32>(45930u, 4294967295u, u_input.a, 41712u))) << (vec4<u32>(u_input.a, _wgslsmith_clamp_u32(4294967295u, min(1u, 32956u), select(u_input.a, u_input.a, true)), abs(~u_input.a), 67142u) % vec4<u32>(32u))), 31u)];
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 31u)];
    global1 = func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, -557f, var_0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1878f, -884f) - vec3<f32>(var_0.x, var_0.x, var_0.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1086f, var_0.x), vec3<f32>(var_0.x, -1195f, var_0.x)))))));
    var var_3 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 60318u), vec2<u32>(1u, 51167u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), select(vec2<u32>(u_input.a, 189u), vec2<u32>(u_input.a, 7501u), true)), _wgslsmith_mod_u32(4593u, _wgslsmith_mod_u32(4294967295u, 39603u)), u_input.a), _wgslsmith_mult_vec4_u32(firstTrailingBit(min(vec4<u32>(1u, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 72893u, 4294967295u))), vec4<u32>(~u_input.a, ~0u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(0u, 4294967295u, 53134u))))), vec4<u32>(abs(u_input.a), u_input.a, _wgslsmith_add_u32(u_input.a, ~u_input.a), ~(~u_input.a)) << (_wgslsmith_add_vec4_u32(vec4<u32>(min(u_input.a, 386u), ~u_input.a, select(u_input.a, u_input.a, var_2.c), ~30150u), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 107774u, u_input.a, u_input.a), abs(vec4<u32>(4294967295u, 0u, u_input.a, 4294967295u)))) % vec4<u32>(32u)));
    return Struct_1(!any(global2.xx), global3.b, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-896f, var_0.x, false))))), Struct_1(arg_0.x, firstTrailingBit(select(vec4<i32>(-15260i, arg_1, 0i, arg_1), var_2.b, arg_2.x)), func_1(_wgslsmith_f_op_f32(var_0.x + var_0.x), global0[_wgslsmith_index_u32(1u, 31u)]).x)).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!select(!(!vec4<bool>(global1.c, global1.a, false, false)), !vec4<bool>(false, global1.a, true, global3.a), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1858f), Struct_1(false, vec4<i32>(2147483647i, -32664i, -1i, global3.b.x), global2.x))), countOneBits(global1.b.x), vec3<bool>(!(global3.a || true), (!global2.x || func_3()) || !(!global3.a), true));
    let var_1 = global0[_wgslsmith_index_u32(u_input.a, 31u)];
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-204f - -1748f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1917f, 1532f)))))))));
    let var_3 = firstLeadingBit(countOneBits(reverseBits(~global1.b.zy ^ vec2<i32>(var_0.b.x, 4597i))));
    global2 = vec3<bool>(all(!(!(!vec3<bool>(false, true, global1.c)))), !global2.x, var_1.a);
    let var_4 = var_2.x;
    var var_5 = global0[_wgslsmith_index_u32(u_input.a, 31u)];
    let var_6 = _wgslsmith_add_vec3_u32(vec3<u32>(~(4294967295u | u_input.a), 1u, firstLeadingBit(u_input.a)), ~abs(vec3<u32>(u_input.a, 1u, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_6.x << (~var_6.x % 32u), _wgslsmith_dot_vec2_u32(~(var_6.xy ^ var_6.xx), ~vec2<u32>(u_input.a, 4294967295u) << (var_6.zx % vec2<u32>(32u)))), abs(firstLeadingBit(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 560f, var_2.x) - vec3<f32>(var_2.x, -155f, 917f))).b.yx)), var_6);
}

