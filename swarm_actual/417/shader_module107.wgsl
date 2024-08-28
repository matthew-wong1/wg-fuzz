// {"0:0":[74,245,242,155,167,26,76,102,233,139,20,191,59,203,80,239,128,152,169,1,121,33,227,122,138,89,250,251,14,44,89,206]}
// Seed: 6863764337036028125

struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: f32;

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    let var_0 = round(exp2(arg_1.b));
    let var_1 = select(-exp2(-vec4<f32>(global1.b, global2.b, 398f, global1.b)), -select(vec4<f32>(718f, var_0, -112f, 427f) / vec4<f32>(-816f, -192f, arg_1.b, global2.b), ceil(vec4<f32>(global2.b, arg_1.b, global1.b, 1000f)), global1.b >= global2.b) * (trunc(vec4<f32>(1369f, arg_1.b, 1177f, -1211f) / vec4<f32>(1603f, global1.b, -711f, arg_1.b)) / ((vec4<f32>(var_0, -468f, var_0, global1.b) + vec4<f32>(-1365f, -193f, 1809f, global1.b)) / -vec4<f32>(global2.b, var_0, 586f, -1582f))), arg_1.a.x >= 7129u);
    var var_2 = Struct_1(~min(min(vec4<u32>(1u, 24728u, 4294967295u, 38181u), ~vec4<u32>(14262u, arg_1.a.x, u_input.a.x, 58825u)), global1.a), round(-(-(-var_0))));
    let var_3 = true && select(!((54739u % 4294967295u) >= 50906u), !any(vec3<bool>(false, false, false)) && (any(vec2<bool>(true, false)) | !false), false);
    var var_4 = vec3<u32>(~15457u, ~arg_1.a.x - ~(~arg_1.a.x), ~(~(~var_2.a.x / dot(vec2<u32>(36218u, var_2.a.x), vec2<u32>(global1.a.x, 1u)))));
    return !select(select(select(vec3<bool>(var_3, false, var_3), !vec3<bool>(true, true, true), var_3), !select(vec3<bool>(var_3, var_3, true), vec3<bool>(var_3, var_3, true), false), !select(vec3<bool>(var_3, false, false), vec3<bool>(var_3, true, var_3), vec3<bool>(true, false, true))), vec3<bool>(any(vec2<bool>(var_3, var_3)), false, false), var_3);
}

fn func_2(arg_0: bool) -> vec4<u32> {
    let var_0 = Struct_1(vec4<u32>(4294967295u, 57479u, u_input.a.x, 31544u), min(global1.b, 1183f));
    let var_1 = select(!vec2<bool>(arg_0, all(!vec2<bool>(false, arg_0))), !vec2<bool>(true, arg_0), arg_0);
    let var_2 = select(!select(!select(vec3<bool>(true, false, false), vec3<bool>(var_1.x, true, false), false), !select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, false, arg_0)), select(vec3<bool>(false, arg_0, var_1.x), !vec3<bool>(false, false, false), false)), !select(vec3<bool>(all(vec4<bool>(false, var_1.x, var_1.x, arg_0)), arg_0, var_0.b > -1288f), func_3(~vec2<i32>(73969i, 2147483647i), Struct_1(vec4<u32>(global2.a.x, var_0.a.x, 25057u, 48360u), global2.b), global2.a.x), vec3<bool>(select(arg_0, true, var_1.x), var_1.x && false, var_1.x)), !(!(!false || (var_1.x != false))));
    global0 = -341f;
    global0 = -(-(sign(global1.b) / global1.b));
    return var_0.a * ~(~countOneBits(vec4<u32>(1u, 27656u, 1u, global2.a.x)) % ~select(u_input.a, var_0.a, arg_0));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = clamp(~(u_input.a ^ (~vec4<u32>(1u, 22392u, 13761u, global2.a.x) & global1.a)), ~abs(~(~vec4<u32>(1u, 36167u, global2.a.x, 0u))), abs(vec4<u32>(abs(arg_2.a.x), arg_2.a.x, ~u_input.a.x, 1u) | func_2(false)));
    global2 = Struct_1(vec4<u32>(0u, global2.a.x, countOneBits(0u), dot(vec2<u32>(firstLeadingBit(u_input.a.x), global2.a.x % 4294967295u), countOneBits(vec2<u32>(u_input.a.x, var_0.x)) | (vec2<u32>(var_0.x, 4294967295u) << vec2<u32>(global2.a.x, global1.a.x)))), (((arg_2.b * global2.b) + 930f) * select(828f, arg_2.b, false)) / global1.b);
    var var_1 = arg_2;
    let var_2 = !false;
    global2 = arg_2;
    return Struct_1(countOneBits(~select(vec4<u32>(1u, 1u, u_input.a.x, 4294967295u), ~vec4<u32>(4294967295u, 4294967295u, 0u, var_1.a.x), vec4<bool>(arg_1.x, false, arg_1.x, var_2))), 1394f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(firstTrailingBit(i32(-2147483648)), !(!(!vec2<bool>(false, true))), Struct_1(countOneBits(~u_input.a), global1.b));
    var var_1 = func_1(dot(select(~(vec4<i32>(u_input.b, u_input.b, -17248i, 1i) - vec4<i32>(u_input.b, -27120i, u_input.b, u_input.b)), -firstLeadingBit(vec4<i32>(2147483647i, i32(-2147483648), 25638i, u_input.b)), any(!vec3<bool>(true, true, true))), -(-vec4<i32>(i32(-2147483648), u_input.b, u_input.b, u_input.b)) % abs(-vec4<i32>(u_input.b, 28557i, u_input.b, -1i))), func_3(-vec2<i32>(-31717i, -1i), Struct_1(vec4<u32>(~global1.a.x, dot(vec2<u32>(u_input.a.x, global1.a.x), var_0.a.xw), countOneBits(0u), 33097u), 582f), 73302u).yz, func_1(-(reverseBits(10138i) + ~33106i), !func_3(~vec2<i32>(-1i, 2147483647i), Struct_1(global2.a, var_0.b), var_0.a.x & 0u).zy, Struct_1(min(countOneBits(var_0.a), ~var_0.a), -870f)));
    global0 = 915f;
    let var_2 = -select(ceil(var_1.b + -var_1.b), global1.b, (~u_input.b >= u_input.b) && (true || true));
    global1 = Struct_1(var_1.a, -1158f);
    let var_3 = abs(global2.a.ww);
    var var_4 = func_1(i32(-2147483648), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(func_3(vec2<i32>(-6263i, -1i), Struct_1(vec4<u32>(var_1.a.x, var_1.a.x, 1u, var_0.a.x), 1492f), var_0.a.x).yx, select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), all(vec2<bool>(false, false))), vec2<bool>(true, func_3(vec2<i32>(-1i, 0i), Struct_1(var_1.a, var_1.b), 48824u).x)), vec2<bool>(!(!true), true), vec2<bool>(!true, false)), func_1(u_input.b, vec2<bool>(!(!true), true), func_1(u_input.b, vec2<bool>(any(vec4<bool>(true, false, true, true)), select(true, false, true)), Struct_1(vec4<u32>(1613u, var_1.a.x, 583u, 4294967295u) / u_input.a, var_0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(-(194f * var_1.b), firstLeadingBit(vec3<u32>(var_0.a.x, abs(var_1.a.x), func_2(false).x) & ((var_0.a.wzy + vec3<u32>(u_input.a.x, 4294967295u, 0u)) % ~vec3<u32>(u_input.a.x, var_4.a.x, var_3.x))), global2.b - var_1.b);
}

