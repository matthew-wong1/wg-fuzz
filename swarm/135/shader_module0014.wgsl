struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<bool>(false, true), vec4<f32>(998f, -827f, -850f, -1000f), vec2<u32>(0u, 1u)), Struct_1(vec2<bool>(true, false), vec4<f32>(1832f, -1264f, 985f, 830f), vec2<u32>(0u, 1u)), Struct_1(vec2<bool>(false, true), vec4<f32>(-1893f, -767f, 253f, 1817f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<bool>(true, true), vec4<f32>(603f, -174f, 945f, 144f), vec2<u32>(1u, 105664u)), Struct_1(vec2<bool>(false, true), vec4<f32>(-1159f, -564f, 1026f, 751f), vec2<u32>(1752u, 6463u)), Struct_1(vec2<bool>(true, true), vec4<f32>(260f, 946f, -366f, -494f), vec2<u32>(1u, 0u)), Struct_1(vec2<bool>(false, false), vec4<f32>(351f, 1181f, 169f, 273f), vec2<u32>(80131u, 0u)), Struct_1(vec2<bool>(false, false), vec4<f32>(1000f, 408f, 600f, 1081f), vec2<u32>(1u, 84721u)), Struct_1(vec2<bool>(false, false), vec4<f32>(-543f, 131f, -1693f, -1872f), vec2<u32>(0u, 0u)), Struct_1(vec2<bool>(true, true), vec4<f32>(-1017f, -1016f, 552f, 426f), vec2<u32>(64011u, 1u)), Struct_1(vec2<bool>(true, false), vec4<f32>(887f, 1275f, -796f, -226f), vec2<u32>(6572u, 124978u)), Struct_1(vec2<bool>(false, false), vec4<f32>(305f, -183f, 1408f, -250f), vec2<u32>(4294967295u, 65128u)), Struct_1(vec2<bool>(false, true), vec4<f32>(-1002f, -1016f, -788f, 844f), vec2<u32>(0u, 0u)), Struct_1(vec2<bool>(false, false), vec4<f32>(799f, -498f, 1373f, 604f), vec2<u32>(0u, 33821u)), Struct_1(vec2<bool>(false, true), vec4<f32>(1054f, -743f, -431f, -1252f), vec2<u32>(10605u, 4294967295u)));

var<private> global2: array<u32, 3> = array<u32, 3>(1u, 1u, 23602u);

var<private> global3: i32;

var<private> global4: array<Struct_1, 19>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(arg_1.a, arg_1.b, u_input.d);
    let var_1 = arg_1;
    let var_2 = !(!vec4<bool>(!var_0.a.x, !select(var_0.a.x, var_1.a.x, true), !all(vec3<bool>(true, var_0.a.x, false)), false));
    var var_3 = Struct_1(var_2.zz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, arg_0.x, var_0.b.x, arg_1.b.x)))), vec2<u32>(min(_wgslsmith_add_u32(reverseBits(u_input.d.x), var_1.c.x ^ 4294967295u), ~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(select(u_input.a.x, var_0.c.x, var_2.x), _wgslsmith_add_u32(0u, 4218u), 11717u | u_input.a.x), vec3<u32>(37785u, ~4294967295u, global2[_wgslsmith_index_u32(global0.x, 3u)]))));
    global3 = -1i;
    return var_1.a.x;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> vec2<f32> {
    global4 = array<Struct_1, 19>();
    global0 = u_input.d;
    var var_0 = !vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)), 208f) == _wgslsmith_f_op_f32(2358f + 304f), all(vec4<bool>(true, true, true, true)), arg_0 != -142f, false);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1787f, -1334f))))), arg_0, var_0.x));
    var_0 = !select(vec4<bool>(_wgslsmith_div_f32(586f, arg_1.x) != var_1, all(vec3<bool>(true, true, true)), all(vec3<bool>(true, var_0.x, false)), any(select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(true, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)))), select(vec4<bool>(!var_0.x, true, true, 4294967295u >= global0.x), vec4<bool>(true, select(true, var_0.x, var_0.x), var_0.x, false && var_0.x), !(!vec4<bool>(var_0.x, true, false, var_0.x))), vec4<bool>(func_3(vec3<f32>(-396f, -1132f, arg_0), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, 44964u), 15u)]), false, var_0.x, true));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.xz))) - arg_1.zy));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), arg_0.b.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(1000f, _wgslsmith_f_op_vec3_f32(vec3<f32>(-386f, 1348f, arg_0.b.x) * vec3<f32>(arg_0.b.x, 997f, arg_0.b.x)))))), vec2<f32>(731f, _wgslsmith_f_op_f32(abs(-305f))), !select(!(!vec2<bool>(arg_0.a.x, false)), arg_0.a, !(!vec2<bool>(arg_0.a.x, arg_0.a.x)))));
    global3 = -u_input.c.x;
    global1 = array<Struct_1, 15>();
    let var_2 = Struct_1(vec2<bool>(-1482f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), arg_0.a.x), vec4<f32>(1f, _wgslsmith_f_op_f32(-287f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_vec2_f32(func_2(-1000f, vec3<f32>(_wgslsmith_f_op_f32(ceil(1110f)), _wgslsmith_f_op_f32(arg_0.b.x * var_1.x), _wgslsmith_div_f32(-549f, -787f)))).x), u_input.a.wz);
    return Struct_1(select(select(vec2<bool>(var_2.a.x, any(vec3<bool>(false, var_2.a.x, false))), vec2<bool>(any(vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x)), true), func_3(vec3<f32>(829f, -1000f, var_1.x), global1[_wgslsmith_index_u32(43096u, 15u)])), vec2<bool>(true | any(vec3<bool>(arg_0.a.x, arg_0.a.x, var_2.a.x)), var_2.a.x), vec2<bool>(!var_2.a.x, global2[_wgslsmith_index_u32(~global0.x, 3u)] != global0.x)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-160f)))), -632f, _wgslsmith_div_f32(arg_0.b.x, var_1.x), _wgslsmith_f_op_f32(trunc(-1440f))), (abs(vec2<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], 12124u)) ^ vec2<u32>(~arg_0.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(18785u, 4294967295u), u_input.d))) & vec2<u32>(max(1u, 0u), ~(~0u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    let var_0 = ~u_input.c;
    var var_1 = -(-(~var_0.www) >> (vec3<u32>(~65749u, func_1(Struct_1(arg_0.a, arg_1, u_input.d)).c.x, global2[_wgslsmith_index_u32(~arg_0.c.x, 3u)]) % vec3<u32>(32u)));
    global4 = array<Struct_1, 19>();
    let var_2 = Struct_1(vec2<bool>(true, true), arg_1, vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, arg_0.c.x), _wgslsmith_div_u32(4294967295u, 12009u) | arg_0.c.x));
    global2 = array<u32, 3>();
    return -790f;
}

fn func_5(arg_0: f32) -> vec4<f32> {
    var var_0 = u_input.e;
    let var_1 = ~_wgslsmith_sub_u32(firstTrailingBit(firstLeadingBit(reverseBits(global0.x))), global2[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(1u, 3u)]), 3u)]);
    var var_2 = global1[_wgslsmith_index_u32(func_1(global4[_wgslsmith_index_u32(1u, 19u)]).c.x, 15u)];
    let var_3 = Struct_1(vec2<bool>(true, var_2.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(523f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1320f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-237f + arg_0), _wgslsmith_f_op_f32(func_4(Struct_1(vec2<bool>(var_2.a.x, var_2.a.x), var_2.b, vec2<u32>(0u, 1u)), vec4<f32>(-582f, var_2.b.x, 799f, 1107f))), _wgslsmith_f_op_f32(-arg_0), 1650f)))), u_input.d);
    global1 = array<Struct_1, 15>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-470f - var_3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -661f))), var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)) + 182f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_f32(func_4(func_1(global4[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(377f, 1222f, -937f, -1324f) + vec4<f32>(-547f, 1953f, 1298f, 938f)))))))), ~var_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -248f), 1595f), 392f)), -414f);
}

