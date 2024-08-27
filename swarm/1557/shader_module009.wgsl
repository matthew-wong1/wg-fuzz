struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<bool>(true, true), 437f, false, vec2<f32>(280f, 1554f)), Struct_1(vec2<bool>(true, true), -1293f, true, vec2<f32>(1142f, -834f)), Struct_1(vec2<bool>(true, false), 1000f, false, vec2<f32>(1000f, -1666f)), Struct_1(vec2<bool>(false, false), 952f, true, vec2<f32>(407f, -947f)), Struct_1(vec2<bool>(false, false), 668f, true, vec2<f32>(1195f, -1065f)), Struct_1(vec2<bool>(true, true), 975f, true, vec2<f32>(1118f, 858f)), Struct_1(vec2<bool>(true, true), -741f, false, vec2<f32>(844f, 1000f)), Struct_1(vec2<bool>(false, true), 1566f, true, vec2<f32>(538f, -767f)), Struct_1(vec2<bool>(false, true), -214f, false, vec2<f32>(326f, 2085f)), Struct_1(vec2<bool>(false, false), 1513f, true, vec2<f32>(-152f, 1000f)), Struct_1(vec2<bool>(true, false), 995f, false, vec2<f32>(-661f, 265f)), Struct_1(vec2<bool>(false, true), -991f, false, vec2<f32>(-2007f, -105f)));

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<i32>, arg_3: i32) -> f32 {
    global2 = vec3<bool>(all(select(select(!vec4<bool>(global2.x, global2.x, global2.x, false), select(vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(global2.x, global2.x, global0[_wgslsmith_index_u32(1u, 2u)], false), vec4<bool>(true, false, global2.x, true)), true), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 2u)], global0[_wgslsmith_index_u32(14371u, 2u)], global0[_wgslsmith_index_u32(44832u, 2u)]), vec4<bool>(false, global2.x, true, true), global2.x), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], false, global0[_wgslsmith_index_u32(8723u, 2u)], false), select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 2u)], true, global0[_wgslsmith_index_u32(arg_0.x, 2u)]), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(arg_1, 2u)]), vec4<bool>(global2.x, true, global2.x, true)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, 0u), 2u)]))), 1i >= arg_3, all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(~arg_0.x, 2u)], false)));
    var var_0 = ~(~arg_1);
    global2 = !select(select(vec3<bool>(any(vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 2u)], global2.x)), global0[_wgslsmith_index_u32(arg_1 ^ arg_1, 2u)], select(false, true, global2.x)), select(vec3<bool>(false, false, global2.x), select(vec3<bool>(true, false, true), vec3<bool>(false, global2.x, global2.x), global2.x), select(vec3<bool>(false, global2.x, true), vec3<bool>(global2.x, false, global0[_wgslsmith_index_u32(22878u, 2u)]), global2.x)), vec3<bool>(true, true, true)), select(select(!vec3<bool>(false, true, global2.x), !vec3<bool>(true, true, global2.x), !vec3<bool>(false, true, global0[_wgslsmith_index_u32(15305u, 2u)])), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], true, true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(43321u, arg_0.x, 116178u), vec3<u32>(62318u, 36742u, 68241u)), 2u)] | global2.x), !(global0[_wgslsmith_index_u32(~arg_1, 2u)] || all(vec3<bool>(false, global2.x, global2.x))));
    var var_1 = Struct_1(global2.zy, 460f, (0u < ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_0.x, 41711u, 16749u), vec4<u32>(arg_1, arg_0.x, 0u, 17522u))) & all(!(!vec3<bool>(global2.x, global2.x, false))), vec2<f32>(_wgslsmith_f_op_f32(sign(-866f)), -1528f));
    var var_2 = global1[_wgslsmith_index_u32(35622u, 12u)];
    return 1f;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a;
    global0 = array<bool, 2>();
    let var_1 = reverseBits(vec3<u32>(1u, 1u, 1u));
    let var_2 = Struct_1(select(select(global2.zx, vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 2u)] || false, !global0[_wgslsmith_index_u32(var_1.x, 2u)]), vec2<bool>(true, var_0 == 1i)), select(global2.yx, !global2.zz, true), !(!vec2<bool>(global2.x, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_1.xz, 39750u, vec3<i32>(var_0, -19269i, u_input.a), 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f)))), _wgslsmith_f_op_f32(-697f - -225f))), true, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-438f, -1658f))))))), vec2<f32>(1347f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2494f))))));
    var var_3 = select(!select(!(!vec3<bool>(true, var_2.c, global2.x)), vec3<bool>(any(vec2<bool>(global2.x, true)), all(vec3<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 2u)], global0[_wgslsmith_index_u32(var_1.x, 2u)])), any(vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 2u)], global2.x, false))), vec3<bool>(true, false | global2.x, all(vec2<bool>(var_2.a.x, global2.x)))), !select(select(!vec3<bool>(var_2.c, global2.x, false), !vec3<bool>(global0[_wgslsmith_index_u32(1067u, 2u)], var_2.c, true), select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 2u)], false, false), true)), select(select(vec3<bool>(global2.x, true, false), vec3<bool>(var_2.c, false, var_2.c), global2.x), vec3<bool>(true, true, true), !vec3<bool>(var_2.c, true, var_2.a.x)), global0[_wgslsmith_index_u32(var_1.x, 2u)]), any(select(select(vec4<bool>(var_2.c, var_2.c, true, true), !vec4<bool>(false, global2.x, var_2.a.x, true), !vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 2u)], true, true)), select(select(vec4<bool>(true, var_2.a.x, global2.x, false), vec4<bool>(false, true, global2.x, false), vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 2u)], global2.x, true)), vec4<bool>(var_2.c, true, global0[_wgslsmith_index_u32(var_1.x, 2u)], false), select(vec4<bool>(true, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(72043u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], false), vec4<bool>(global2.x, false, false, var_2.c))), select(true, false, global2.x))));
    return Struct_1(vec2<bool>(!(-236f <= _wgslsmith_f_op_f32(-var_2.d.x)), false || global0[_wgslsmith_index_u32(~var_1.x, 2u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f + -386f))) + 1000f), global2.x, vec2<f32>(_wgslsmith_f_op_f32(573f - _wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_f_op_f32(-var_2.b)));
}

fn func_1(arg_0: bool) -> vec3<bool> {
    global1 = array<Struct_1, 12>();
    var var_0 = func_2();
    global0 = array<bool, 2>();
    var var_1 = 1068f >= var_0.b;
    let var_2 = func_2();
    return vec3<bool>(any(vec2<bool>(true, any(func_2().a))), all(select(vec3<bool>(true, global0[_wgslsmith_index_u32(~28417u, 2u)], arg_0), vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], true, false), vec3<bool>(true, any(vec3<bool>(true, global0[_wgslsmith_index_u32(34122u, 2u)], false)), any(vec3<bool>(var_0.a.x, false, global2.x))))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(select(!(!func_1(global2.x)), !(!(!vec3<bool>(global2.x, false, global0[_wgslsmith_index_u32(15633u, 2u)]))), true), !func_1(false), false);
    var var_0 = -2041f;
    var var_1 = ~(~firstLeadingBit(select(firstTrailingBit(vec4<u32>(1u, 201u, 1u, 28121u)), ~vec4<u32>(98549u, 22540u, 76258u, 14511u), vec4<bool>(global0[_wgslsmith_index_u32(44475u, 2u)], false, true, false))));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-166f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-855f + -978f)) * func_2().d.x))));
    let var_3 = select(!vec3<bool>(select(false, false, select(global2.x, global0[_wgslsmith_index_u32(0u, 2u)], global2.x)), global2.x, true), select(!(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 2u)], global2.x), vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 2u)], true), vec3<bool>(false, global2.x, true))), vec3<bool>(false, select(all(vec4<bool>(global2.x, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(var_1.x, 2u)], global2.x)), func_2().c, global2.x), !global2.x), select(global0[_wgslsmith_index_u32(~1u, 2u)], false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(var_1.zzw), abs(var_1.xyz)), 2u)])), !global0[_wgslsmith_index_u32(19468u, 2u)]);
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(36873u, _wgslsmith_f_op_f32(var_2.x + -305f), var_1.yy >> (min(max(vec2<u32>(var_1.x, 4294967295u), var_1.yx) ^ _wgslsmith_div_vec2_u32(vec2<u32>(32339u, 22937u), vec2<u32>(0u, var_1.x)), vec2<u32>(1u, ~4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.d.x) * _wgslsmith_f_op_f32(var_2.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(187f, 679f)), _wgslsmith_div_f32(589f, var_2.x)))));
}

